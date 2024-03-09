<?php

namespace App\Http\Controllers;

use App\Models\Network_Society;
use Illuminate\Http\Request;

class NetworkSocietyController extends Controller
{
    public function show()
    {
        $social_network = Network_Society::all();
        return view('admin.image_video.social_network', compact('social_network'));
    }
    public function create()
    {
        return view('admin.image_video.social_network_create');
    }
    public function store(Request $request)
    {
        $request->validate([
            'link' => 'required',
            'number' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
        ], [
            'link.required' => 'Ô này không được bỏ trống',
        ]);
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
        } else {
            // Đặt giá trị mặc định nếu không có hình ảnh được tải lên
            $file_name = 'default_image.jpg';
        }

        $social_network = new Network_Society();
        $social_network->image = $file_name;
        $social_network->link = $request->input('link');
        $social_network->display = $request->has('display') ? 1 : 0;
        $social_network->number = $request->input('number');
        $social_network->save();
        return redirect()->route('show.network-society')->with('messageSucces', 'tạo thành công');
    }
    public function edit($id)
    {
        $social_network = Network_Society::find($id);

        return view('admin.image_video.social_network_edit', compact('social_network'));
    }
    public function update(Request $request, $id)
    {
        // dd($request);
        $social_network = Network_Society::findOrFail($id);

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $social_network->image = $file_name;
        }
        $social_network->link = $request->input('link');
        $social_network->number = $request->input('number');
        $social_network->display = $request->has('display');
        $social_network->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function destroy($id)
    {
        $network_society = Network_Society::find($id);
        $network_society->delete();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function updateDisplayStatus(Request $request, $id)
    {
        $network_society = Network_Society::findOrFail($id);
        $network_society->display = $request->input('display') ? 1 : 0;
        $network_society->save();

        return response()->json(['success' => true]);
    }
    public function updateNumber(Request $request)
    {
        try {
            $newNumber = $request->input('new_number');
            $itemId = $request->input('item_id');

            $item = Network_Society::find($itemId);
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
