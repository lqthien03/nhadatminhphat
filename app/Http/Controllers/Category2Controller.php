<?php

namespace App\Http\Controllers;

use App\Models\Level1_Product;
use App\Models\Level2_Product;
use App\Models\Seo;
use Illuminate\Http\Request;

class Category2Controller extends Controller
{
    public function show(Request $request)
    {
        $category_level1 = Level1_Product::all();
        $selectedCategoryId = $request->input('level1_product_id');

        if ($selectedCategoryId) {
            $category_level2 = Level2_Product::where('level1_product_id', $selectedCategoryId)->get();
        } else {
            $category_level2 = Level2_Product::all();
        }

        return view('admin.category.category_level2', compact('category_level2', 'category_level1'));
    }
    public function create()
    {
        $category_level1 = Level1_Product::all();
        return view('admin.category.category_level2_create', compact('category_level1'));
    }
    public function store(Request $request)
    {
        $request->validate([
            'link' => 'required',
            'tittle' => 'required',
            'describe' => 'required',
            'number' => 'required',
            'level1_product_id' => 'required',
        ], [
            'link.required' => 'Ô này không được bỏ trống',

            'tittle.required' => 'Ô này không được bỏ trống',
            'describe.required' => 'Ô này không được bỏ trống',
            'number.required' => 'Ô này không được bỏ trống',
            'level1_product_id.required' => 'Ô này không được bỏ trống',
        ]);
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

        $category_level2 = new Level2_Product();
        $category_level2->image = $file_name;
        $category_level2->link = $request->input('link');
        $category_level2->tittle = $request->input('tittle');
        $category_level2->describe = $request->input('describe');
        $category_level2->display = $request->has('display') ? 1 : 0;
        $category_level2->number = $request->input('number');
        $category_level2->level1_product_id = $request->input('level1_product_id');
        $category_level2->seo_id = $seo->id;

        $category_level2->seo()->associate($seo);
        $category_level2->save();

        return redirect()->route('show.category2')->with('messageSucces', 'tạo thành công');
    }
    public function edit($id)
    {
        $category_level2 = Level2_Product::find($id);
        $category_level1 = Level1_Product::all();

        return view('admin.category.category_level2_edit', compact('category_level2', 'category_level1'));
    }
    public function update(Request $request, $id)
    {
        $category_level2 = Level2_Product::findOrFail($id);
        $seo = $category_level2->seo;

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $category_level2->image = $file_name;
        }

        $category_level2->link = $request->input('link');
        $category_level2->describe = $request->input('describe');
        $category_level2->tittle = $request->input('tittle');
        $category_level2->number = $request->input('number');
        $category_level2->level1_product_id = $request->input('level1_product_id');
        $category_level2->display = $request->has('display');
        $category_level2->seo_id = $request->input('seo_id');
        $category_level2->save();

        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();

        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function destroy($id)
    {
        $category_level2 = Level2_Product::find($id);
        $category_level2->delete();

        return back()->with('messageSucces', 'Xóa thành công');
    }
    public function uploadImage(Request $request)
    {
        if ($request->hasFile('upload')) {
            $originName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $fileName = $fileName . '_' . time() . '.' . $extension;

            $request->file('upload')->move(public_path('products'), $fileName);
            $CKEditorFuncNum = $request->input('CKEditorFuncNum');
            $url = asset('products/' . $fileName);
            $smg = 'tải ảnh thành công';
            $response = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url', '$smg')</script>";
            @header('Content-type: text/html; charset=utf-8');
            echo $response;
        }
    }
    public function updateDisplayStatus(Request $request, $id)
    {
        $category = Level2_Product::findOrFail($id);
        $category->display = $request->input('display') ? 1 : 0;
        $category->save();

        return response()->json(['success' => true]);
    }
    public function updateNumber(Request $request)
    {
        try {
            $newNumber = $request->input('new_number');
            $itemId = $request->input('item_id');

            $item = Level2_Product::find($itemId);
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
