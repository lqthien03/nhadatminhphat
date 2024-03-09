<?php

namespace App\Http\Controllers;

use App\Models\Advise;
use App\Models\Banner;
use App\Models\Favicon;
use App\Models\Footer;
use App\Models\Level1_Product;
use App\Models\Logo;
use App\Models\Seo;
use App\Models\SeoAdvise;
use App\Models\Setting;
use Illuminate\Http\Request;

class AdviseController extends Controller
{
    public function all()
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $advise = Advise::all();
        $footer = Footer::all();
        $seo_advise = SeoAdvise::all()->firstOrFail();
        $seo = Seo::where('id', $seo_advise->seo_id)->get();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        return view("client.advise", compact('logo', 'favicon', 'banner', 'advise', 'footer', 'seo', 'setting', 'level1products'));
    }
    public function detail($link)
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $footer = Footer::all();
        $advise = Advise::where('link', $link)->firstOrFail();
        $seo = Seo::where('id', $advise->seo_id)->get();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        return view("client.advise_detail", compact('logo', 'favicon', 'banner', 'advise', 'footer', 'seo', 'setting', 'level1products'));
    }
    public function show()
    {
        $advise = Advise::all();
        return view('admin.post.advise', compact('advise'));
    }
    public function create()
    {
        return view('admin.post.advise_create');
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

        $advise = new advise();
        $advise->image = $file_name;
        $advise->link = $request->input('link');
        $advise->tittle = $request->input('tittle');
        $advise->describe = $request->input('describe');
        $advise->content = $request->input('content');
        $advise->display = $request->has('display') ? 1 : 0;
        $advise->number = $request->input('number');
        $advise->seo_id = $seo->id;

        // Cập nhật khóa ngoại 'seo_id' của sản phẩm
        $advise->seo()->associate($seo);
        $advise->save();
        // Chuyển hướng hoặc trả về phản hồi theo cần thiết
        return redirect()->route('show.advise')->with('messageSucces', 'Tạo thành công');
    }
    public function edit($id)
    {
        $advise = advise::with(['seo'])->find($id);
        return view('admin.post.advise_edit', compact('advise'));
    }
    public function update(Request $request, $id)
    {
        $advise = advise::findOrFail($id);
        $seo = $advise->seo;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $advise->image = $file_name;
        }
        $advise->tittle = $request->input('tittle');
        $advise->describe = $request->input('describe');
        $advise->content = $request->input('content');
        $advise->link = $request->input('link');
        $advise->number = $request->input('number');
        $advise->display = $request->has('display');
        $advise->seo_id = $request->input('seo_id');
        $advise->save();

        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();


        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function updateDisplayStatus(Request $request, $id)
    {
        $advise = advise::findOrFail($id);
        $advise->display = $request->input('display') ? 1 : 0;
        $advise->save();

        return response()->json(['success' => true]);
    }
    public function updateNumber(Request $request)
    {
        try {
            $newNumber = $request->input('new_number');
            $itemId = $request->input('item_id');

            $item = advise::find($itemId);
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
