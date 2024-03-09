<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Favicon;
use App\Models\Footer;
use App\Models\Introduce;
use App\Models\Level1_Product;
use App\Models\Logo;
use App\Models\Seo;
use App\Models\Setting;
use Illuminate\Http\Request;

class IntroduceController extends Controller
{
    public function all()
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $introduce = Introduce::all()->first();
        $footer = Footer::all();
        $seo = Seo::where('id', $introduce->seo_id)->get();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        $setting = Setting::all()->first();

        return view("client.introduce", compact('logo', 'favicon', 'banner', 'introduce', 'footer', 'seo', 'setting', 'level1products', 'setting'));
    }
}
