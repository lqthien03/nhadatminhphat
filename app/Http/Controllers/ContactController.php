<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Contact;
use App\Models\Favicon;
use App\Models\Footer;
use App\Models\Level1_Product;
use App\Models\Logo;
use App\Models\Mail;
use App\Models\Seo;
use App\Models\Setting;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function all()
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $contact = Contact::all()->firstOrFail();
        $seo = Seo::where('id', $contact->seo_id)->get();
        $footer = Footer::all();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        return view("client.contact", compact('logo', 'favicon', 'banner', 'contact', 'footer', 'setting', 'seo','level1products'));
    }
    public function store(Request $request)
    {
        // dd($request);
        $mail = new Mail();
        $mail->number = $request->input('1');
        $mail->name = $request->input('name');
        $mail->phone = $request->input('phone');
        $mail->address = $request->input('address');
        $mail->email = $request->input('email');
        $mail->topic = $request->input('topic');
        $mail->content = $request->input('content');

        $mail->save();
        return redirect()->route('show.contact');
    }
}
