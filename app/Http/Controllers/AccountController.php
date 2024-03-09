<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class AccountController extends Controller
{
    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('admin.user.information', compact('user'));
    }

    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);
        $user->role = $request->input('role');
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->phone = $request->input('phone');
        $user->sex = $request->input('sex');
        $user->date = $request->input('date');
        $user->address = $request->input('address');
        $user->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function edit_password($id)
    {
        $user = User::findOrFail($id);
        return view('admin.user.update_password', compact('user'));
    }
}
