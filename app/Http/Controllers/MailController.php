<?php

namespace App\Http\Controllers;

// use App\Mail\SendEmail;
use App\Models\Mail;
// use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail as FacadesMail;
use App\Mail\SendEmail;
use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Mail;

// use Mail;

class MailController extends Controller
{
    public function show()
    {
        $mail = Mail::all();
        return view('admin.mail.mail', compact('mail'));
    }
    public function edit($id)
    {
        $mail = Mail::find($id);
        return view('admin.mail.mail_edit', compact('mail'));
    }
    public function update(Request $request, $id)
    {
        $mail = Mail::findOrFail($id);
        $mail->name = $request->input('name');
        $mail->phone = $request->input('phone');
        $mail->email = $request->input('email');
        $mail->topic = $request->input('topic');
        $mail->address = $request->has('address');
        $mail->status = $request->input('status');
        $mail->content = $request->input('content');
        $mail->note = $request->input('note');
        $mail->number = $request->input('number');
        // dd($contact);
        $mail->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function destroy($id)
    {
        $mail = Mail::find($id);
        $mail->delete();
        return back()->with('messageSucces', 'Xóa thành công');
    }

    // đăng kí tư vấn
    public function show_register()
    {
        $mail = Mail::all();
        return view("admin.mail.register_consultation", compact('mail'));
    }
    // public function send_email(Request $request)
    // {
    //     // Lấy danh sách email và nội dung email từ request
    //     $listEmails = explode(',', $request->input('listemail'));
    //     $tittle = $request->input('tittle');
    //     $content = $request->input('content');

    //     // Gửi email cho từng người dùng
    //     foreach ($listEmails as $email) {
    //         Mail::to($email)->send(new SendEmail(['tittle' => $tittle, 'content' => $content]));
    //     }

    //     // Thực hiện xử lý sau khi gửi email (ví dụ: redirect về trang trước với thông báo thành công)
    //     return redirect()->back()->with('messageSuccess', 'Email đã được gửi thành công!');
    // }
}
