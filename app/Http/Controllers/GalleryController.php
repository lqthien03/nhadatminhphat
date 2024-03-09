<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    public function show($product_id)
    {
        $gallery = Gallery::where('product_id', $product_id)->get();

        return view('admin.gallery.gallery', compact('gallery'));
    }
    public function create($product_id)
    {
        $gallery = Gallery::where('product_id', $product_id)->first();
        return view('admin.gallery.gallery_create', compact('gallery'));
    }
    public function store(Request $request, Gallery $product_id)
    {
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
        } else {
            // Đặt giá trị mặc định nếu không có hình ảnh được tải lên
            $file_name = 'default_image.jpg';
        }
        $gallery = new Gallery();
        $gallery->image = $file_name;
        $gallery->tittle = $request->input('tittle');
        $gallery->product_id = $request->input('product_id');
        $gallery->display = $request->has('display') ? 1 : 0;
        $gallery->save();
        return redirect()->route('show.product')->with('messageSucces', 'tạo thành công');
        // return view('admin.gallery.gallery', compact('gallery'));
    }

    // public function edit($id)
    // {
    //     $seo_product = SeoProduct::find($id);
    //     $total = Mail::count();
    //     return view('admin.seo_page.product', compact('seo_product', 'total'));
    // }

    // public function update(Request $request, $id)
    // {
    //     // dd($request);
    //     $seo_product = SeoProduct::findOrFail($id);
    //     $seo = $seo_product->seo;
    //     if ($request->hasFile('image')) {
    //         $file = $request->file('image');
    //         $file_name = $file->getClientOriginalName();

    //         // Di chuyển hình ảnh đến thư mục lưu trữ
    //         $file->move(public_path('products'), $file_name);
    //         $seo_product->image = $file_name;
    //     }
    //     $seo_product->seo_id = $request->input('seo_id');
    //     $seo_product->save();

    //     $seo->seo_tittle = $request->input('seo_tittle');
    //     $seo->seo_keyword = $request->input('seo_keyword');
    //     $seo->seo_description = $request->input('seo_description');
    //     $seo->save();
    //     return back()->with('messageSucces', 'Cập nhật thành công');
    // }

    public function edit($id)
    {
        $gallery = Gallery::find($id);
        return view('admin.gallery.gallery_edit', compact('gallery'));
    }
    public function update(Request $request, $id)
    {
        $gallery = Gallery::findOrFail($id);
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $gallery->image = $file_name;
        }
        $gallery->tittle = $request->input('tittle');
        $gallery->number = $request->input('number');
        $gallery->display = $request->has('display');

        $gallery->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function destroy($id)
    {
        $gallery = Gallery::find($id);
        $gallery->delete();
        return back()->with('messageSucces', 'Xóa thành công');
    }
}
