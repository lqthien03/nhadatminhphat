<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Favicon;
use App\Models\Footer;
use App\Models\Level1_Product;
use App\Models\Logo;
use App\Models\Product;
use App\Models\Seo;
use App\Models\Setting;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $keyword = $request->input('keyword');
        $products = Product::all()->firstOrFail();
        $seo = Seo::where('id', $products->seo_id)->get();
        $favicon = Favicon::all();
        $logo = Logo::all();
        $banner = Banner::all();
        $footer = Footer::all();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        $detail = Product::where('tittle', 'like', '%' . $keyword . '%')
            ->get();

        return view('client.search', compact('detail', 'seo', 'favicon', 'logo', 'banner', 'footer', 'setting', 'level1products', 'products'));
    }
}
