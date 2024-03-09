<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Favicon;
use App\Models\Footer;
use App\Models\Level1_Product;
use App\Models\Logo;
use App\Models\News;
use App\Models\Seo;
use App\Models\SeoNews;
use App\Models\Setting;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function all()
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $news = News::all();
        $footer = Footer::all();
        $seo_news = SeoNews::all()->firstOrFail();
        $seo = Seo::where('id', $seo_news->seo_id)->get();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        return view("client.news", compact('logo', 'favicon', 'banner', 'news', 'footer', 'seo', 'setting', 'level1products'));
    }
    public function detail($link)
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $footer = Footer::all();
        $news = News::where('link', $link)->firstOrFail();
        $seo = Seo::where('id', $news->seo_id)->get();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        return view("client.news_detail", compact('logo', 'favicon', 'banner', 'news', 'footer', 'seo', 'setting', 'level1products'));
    }
    public function show()
    {
        $news = News::all();
        return view('admin.post.news', compact('news'));
    }
    public function create()
    {
        return view('admin.post.news_create');
    }
    public function store(Request $request)
    {
        $request->validate([
            'link' => 'required',
            'tittle' => 'required',
            'describe' => 'required',
            'content' => 'required',
            'number' => 'required',

            'image' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
        ], [
            'link.required' => 'Ô này không được bỏ trống',
            'tittle.required' => 'Ô này không được bỏ trống',
            'describe.required' => 'Ô này không được bỏ trống',
            'content.required' => 'Ô này không được bỏ trống',
        ]);
        // dd($request);
        $seo = new Seo;
        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
        } else {
            // Đặt giá trị mặc định nếu không có hình ảnh được tải lên
            $file_name = 'default_image.jpg';
        }

        $news = new News();
        $news->image = $file_name;
        $news->link = $request->input('link');
        $news->tittle = $request->input('tittle');
        $news->describe = $request->input('describe');
        $news->content = $request->input('content');
        $news->display = $request->has('display') ? 1 : 0;
        $news->number = $request->input('number');
        $news->seo_id = $seo->id;

        // Cập nhật khóa ngoại 'seo_id' của sản phẩm
        $news->seo()->associate($seo);
        $news->save();
        // Chuyển hướng hoặc trả về phản hồi theo cần thiết
        return redirect()->route('show.news')->with('messageSucces', 'Tạo thành công');
    }
    public function edit($id)
    {
        $news = News::with(['seo'])->find($id);
        return view('admin.post.news_edit', compact('news'));
    }
    public function update(Request $request, $id)
    {
        $news = News::findOrFail($id);
        $seo = $news->seo;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $news->image = $file_name;
        }
        $news->tittle = $request->input('tittle');
        $news->describe = $request->input('describe');
        $news->content = $request->input('content');
        $news->link = $request->input('link');
        $news->number = $request->input('number');
        $news->display = $request->has('display');
        $news->seo_id = $request->input('seo_id');
        $news->save();

        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();


        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function destroy($id)
    {
        $news = News::find($id);
        $news->delete();
        return back()->with('messageSucces', 'Xóa thành công');
    }
    public function updateDisplayStatus(Request $request, $id)
    {
        $news = News::findOrFail($id);
        $news->display = $request->input('display') ? 1 : 0;
        $news->save();

        return response()->json(['success' => true]);
    }
    public function updateDisplayOutstand(Request $request, $id)
    {
        $news = News::findOrFail($id);
        $news->outstand = $request->input('outstand') ? 1 : 0;
        $news->save();

        return response()->json(['success' => true]);
    }
    public function updateNumber(Request $request)
    {
        try {
            $itemId = $request->input('item_id');
            $newNumber = $request->input('new_number');

            $item = News::find($itemId);
            if (!$item) {
                return response()->json(['success' => false, 'message' => 'Item not found'], 404);
            }

            $item->number = $newNumber;
            $item->save();

            return response()->json(['success' => true]);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }
}
