<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Customer_Support;
use App\Models\Favicon;
use App\Models\Footer;
use App\Models\Introduce;
use App\Models\Level1_Product;
use App\Models\Level2_Product;
use App\Models\Logo;
use App\Models\Network_Society;
use App\Models\News;
use App\Models\Product;
use App\Models\Real_estate;
use App\Models\Seo;
use App\Models\Setting;
use App\Models\Slideshow;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function all()
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $introduce = Introduce::all();
        $level1products = Level1_Product::all();

        $setting = Setting::all()->first();
        $favicon = Favicon::all();
        $slideshow = Slideshow::all();
        $footer = Footer::all();
        $news = News::all();
        $real_estate_procedure = Real_estate::all();
        $customer_support = Customer_Support::all();
        $slideshow = Slideshow::all();
        $query = Product::query();
        $product = $query->paginate(12);
        $seo = Seo::all()->first();
        $category_level2 = Level2_Product::all();
        $network_society = Network_Society::all();
        $level2products = Level2_Product::where('level1_product_id', 0);
       

        return view('client.index',  compact('level2products', 'level1products', 'banner', 'setting', 'logo', 'favicon', 'slideshow', 'footer', 'introduce', 'real_estate_procedure', 'news', 'customer_support', 'product', 'seo', 'category_level2', 'network_society'));
    }
}
