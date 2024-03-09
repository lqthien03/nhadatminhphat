<?php

namespace App\Http\Controllers;

use App\Models\Consultation;
use App\Models\Contact;
use App\Models\Customer_Support;
use App\Models\Footer;
use App\Models\Introduce;
use Illuminate\Http\Request;

class StaticPageController extends Controller
{
    /// giới thiệu
    public function edit_introduce($id)
    {
        $introduce = Introduce::find($id);

        return view("admin.static_page.introduce", compact('introduce'));
    }
    public function update_introduce(Request $request, $id)
    {
        $introduce = Introduce::findOrFail($id);
        $seo = $introduce->seo;

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $introduce->image = $file_name;
        }

        $introduce->tittle = $request->input('tittle');
        $introduce->content = $request->input('content');
        $introduce->describe = $request->input('describe');
        $introduce->display = $request->has('display');
        $introduce->seo_id = $request->input('seo_id');
        $introduce->save();
        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }

    // liên hệ
    public function edit_contact($id)
    {
        $contact = Contact::find($id);

        return view('admin.static_page.contact', compact('contact'));
    }
    public function update_contact(Request $request, $id)
    {
        $contact = Contact::findOrFail($id);
        $seo = $contact->seo;

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $contact->image = $file_name;
        }

        $contact->content = $request->input('content');
        $contact->display = $request->has('display');
        $contact->seo_id = $request->input('seo_id');
        $contact->save();
        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }

    //text đăng ký tư vấn
    public function edit_register_consultation($id)
    {
        $consultation = Consultation::find($id);
        return view('admin.static_page.consultation', compact('consultation'));
    }
    public function update_register_consultation(Request $request, $id)
    {
        $consultation = Consultation::findOrFail($id);

        // $consultation->tittle = $request->input('tittle');
        $consultation->content = $request->input('content');
        $consultation->display = $request->has('display');
        $consultation->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    // hỗ trợ khách hàng
    public function edit_support_customer($id)
    {
        $customer_support = Customer_Support::find($id);
        return view('admin.static_page.support_customer', compact('customer_support'));
    }
    public function update_support_customer(Request $request, $id)
    {
        $customer_support = Customer_Support::findOrFail($id);

        // $consultation->tittle = $request->input('tittle');
        $customer_support->content = $request->input('content');
        $customer_support->display = $request->has('display');
        $customer_support->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    // footer
    public function edit_footer($id)
    {
        $footer = Footer::find($id);
        return view('admin.static_page.footer', compact('footer'));
    }
    public function update_footer(Request $request, $id)
    {
        $footer = Footer::findOrFail($id);

        // $consultation->tittle = $request->input('tittle');
        $footer->content = $request->input('content');
        $footer->display = $request->has('display');
        $footer->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
}
