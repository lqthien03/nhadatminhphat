<?php

namespace App\Http\Controllers;

use App\Models\Real_estate;
use App\Models\Seo;
use Illuminate\Http\Request;

class RealEstateController extends Controller
{
    public function show()
    {
        $real_estate = Real_estate::all();
        return view('admin.post.real_estate', compact('real_estate'));
    }
    public function create()
    {
        return view('admin.post.real_estate_create');
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

        $real_estate = new Real_estate();
        $real_estate->image = $file_name;
        $real_estate->link = $request->input('link');
        $real_estate->tittle = $request->input('tittle');
        $real_estate->describe = $request->input('describe');
        $real_estate->content = $request->input('content');
        $real_estate->display = $request->has('display') ? 1 : 0;
        $real_estate->number = $request->input('number');
        $real_estate->seo_id = $seo->id;

        // Cập nhật khóa ngoại 'seo_id' của sản phẩm
        $real_estate->seo()->associate($seo);
        $real_estate->save();
        // Chuyển hướng hoặc trả về phản hồi theo cần thiết
        return redirect()->route('show.real_estate')->with('messageSucces', 'Tạo thành công');
    }
    public function edit($id)
    {
        $real_estate = Real_estate::with(['seo'])->find($id);
        return view('admin.post.real_estate_edit', compact('real_estate'));
    }
    public function update(Request $request, $id)
    {
        $real_estate = Real_estate::findOrFail($id);
        $seo = $real_estate->seo;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $real_estate->image = $file_name;
        }
        $real_estate->tittle = $request->input('tittle');
        $real_estate->describe = $request->input('describe');
        $real_estate->content = $request->input('content');
        $real_estate->link = $request->input('link');
        $real_estate->number = $request->input('number');
        $real_estate->display = $request->has('display');
        $real_estate->seo_id = $request->input('seo_id');
        $real_estate->save();

        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();


        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function updateDisplayOutstand(Request $request, $id)
    {
        $real_estate = Real_estate::findOrFail($id);
        $real_estate->outstand = $request->input('outstand') ? 1 : 0;
        $real_estate->save();

        return response()->json(['success' => true]);
    }
    public function updateDisplayStatus(Request $request, $id)
    {
        $real_estate = Real_estate::findOrFail($id);
        $real_estate->display = $request->input('display') ? 1 : 0;
        $real_estate->save();

        return response()->json(['success' => true]);
    }
    public function updateNumber(Request $request)
    {
        try {
            $newNumber = $request->input('new_number');
            $itemId = $request->input('item_id');

            $item = Real_estate::find($itemId);
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
