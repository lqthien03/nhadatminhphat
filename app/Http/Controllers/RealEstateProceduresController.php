<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Favicon;
use App\Models\Footer;
use App\Models\Level1_Product;
use App\Models\Logo;
use App\Models\Real_estate;
use App\Models\Seo;
use App\Models\Seo_Real_Estate_Procedures;
use App\Models\Setting;
use Illuminate\Http\Request;

class RealEstateProceduresController extends Controller
{
    public function all()
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $real_estate_procedure = Real_estate::all();
        $seo_real_estate_procedure = Seo_Real_Estate_Procedures::all()->firstOrFail();
        $footer = Footer::all();
        $seo = Seo::where('id', $seo_real_estate_procedure->seo_id)->get();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        return view("client.real_estate_procedure", compact('logo', 'favicon', 'banner', 'real_estate_procedure', 'footer', 'seo', 'setting', 'level1products'));
    }

    public function detail($link)
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $footer = Footer::all();
        $real_estate_procedure = Real_estate::where('link', $link)->firstOrFail();
        $seo = Seo::where('id', $real_estate_procedure->seo_id)->get();
        $sp_khac = Real_estate::all();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        return view("client.real_estate_procedure_detail", compact('logo', 'favicon', 'banner', 'real_estate_procedure', 'footer', 'seo', 'sp_khac', 'setting', 'level1products'));
    }
}
