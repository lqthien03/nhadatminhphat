<?php

namespace App\Http\Controllers;

use App\Models\Logo;
use Illuminate\Http\Request;

class LogoController extends Controller
{
    public function edit($id)
    {
        $logo = Logo::find($id);

        return view('admin.image_video.logo', compact('logo'));
    }
    public function update(Request $request, $id)
    {
        $logo = Logo::findOrFail($id);
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);

            // Cập nhật đường dẫn hình ảnh mới
            $logo->image = $file_name;
        }
        $logo->display = $request->has('display');
        $logo->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
}
