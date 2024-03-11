<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Favicon;
use App\Models\Footer;
use App\Models\Gallery;
use App\Models\Level1_Product;
use App\Models\Level2_Product;
use App\Models\Logo;
use App\Models\Product;
use App\Models\Seo;
use App\Models\Seo_Real_Estate;
use App\Models\SeoAdvise;
use App\Models\Setting;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function all()
    {
        $query = Product::query()->firstOrFail();
        $products = $query->paginate(12);
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $seo = Seo::where('id', $query->seo_id)->get();
        $footer = Footer::all();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        return view("client.products", compact('logo', 'favicon', 'banner', 'products', 'footer', 'seo', 'setting', 'level1products'));
    }
    public function productLevel1()
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $footer = Footer::all();
        $query = Product::query();
        $products = $query->paginate(12);

        $id = $_GET['id'];
        $products_level1 = Level1_Product::where('id', $id)->get();
        $setting = Setting::all()->first();
        $detail = Product::where('level1_product_id', $id)->get();
        $level1products = Level1_Product::all();
        return view('client.products_level1', compact('logo', 'favicon', 'banner', 'products', 'footer', 'products_level1', 'detail', 'setting', 'level1products'));
    }
    public function productLevel2()
    {
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $footer = Footer::all();
        $setting = Setting::all()->first();
        $query = Product::query();
        $products = $query->paginate(12);

        $id = $_GET['id'];
        $products_level2 = Level2_Product::where('id', $id)->get();
        $detail = Product::where('level2_product_id', $id)->get();
        $level1products = Level1_Product::all();

        // dd($products_level2);

        return view('client.products_level2', compact('logo', 'favicon', 'banner', 'products', 'footer', 'setting', 'level1products', 'products_level2', 'detail'));
    }
    public function detail($link)
    {
        // $products = Product::with('seo')->first();
        $logo = Logo::all();
        $favicon = Favicon::all();
        $banner = Banner::all();
        $footer = Footer::all();
        $product = Product::where('link', $link)->firstOrFail();
        $cungloai = $product->level1_product_id;
        $spcungloai = Product::where('level1_product_id', $cungloai)->get();
        $products = Seo::where('id', $product->seo_id)->get();
        $setting = Setting::all()->first();
        $level1products = Level1_Product::all();
        // dd($level1products);
        return view("client.products_detail", compact('logo', 'favicon', 'banner', 'footer', 'product', 'spcungloai', 'products', 'setting', 'level1products'));
    }
    public function show(Request $request)
    {
        $query = Product::query();

        // Lọc sản phẩm theo danh mục cấp 1 nếu có
        if ($request->has('level1_product_id')) {
            $query->where('level1_product_id', $request->input('level1_product_id'));
        }

        // Lọc sản phẩm theo danh mục cấp 2 nếu có
        if ($request->has('level2_product_id')) {
            $query->where('level2_product_id', $request->input('level2_product_id'));
        }



        // Lấy dữ liệu sản phẩm đã lọc và phân trang nếu cần
        $product = $query->paginate(10);

        // Lấy danh sách các danh mục để hiển thị trong view
        $category_level2 = Level2_Product::all();
        $category_level1 = Level1_Product::all();


        return view('admin.category.product', compact('product', 'category_level2', 'category_level1'));
    }
    public function create()
    {


        $category_level2 =  Level2_Product::all();
        $category_level1 =  Level1_Product::all();

        return view('admin.category.product_create', compact('category_level2', 'category_level1'));
    }
    public function store(Request $request)
    {

        $request->validate([
            'link' => 'required',
            'tittle' => 'required',
            'describe' => 'required',
            'content' => 'required',
            'number' => 'required',
            // 'new_price' => 'required',
            'product_code' => 'required',
            'price' => 'required',
            'level1_product_id' => 'required',
            'level2_product_id' => 'required',
            // 'discount' => 'required',

        ], [
            'link.required' => 'Ô này không được bỏ trống',
            // 'link.url' => 'Đường dẫn không đúng định dạng URL.',
            'tittle.required' => 'Ô này không được bỏ trống',
            'describe.required' => 'Ô này không được bỏ trống',
            'content.required' => 'Ô này không được bỏ trống',
            'number.required' => 'Ô này không được bỏ trống',
            'new_price.required' => 'Ô này không được bỏ trống',
            'product_code.required' => 'Ô này không được bỏ trống',
            'price.required' => 'Ô này không được bỏ trống',
            'discount.required' => 'Ô này không được bỏ trống',
            'level1_product_id.required' => 'Ô này không được bỏ trống',
            'level2_product_id.required' => 'Ô này không được bỏ trống',
        ]);



        $seo = new Seo();
        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
        } else {
            // Đặt giá trị mặc định nếu không có hình ảnh được tải lên
            $file_name = 'default_image.jpg';
        }

        $product = new Product();
        $product->image = $file_name;
        $product->link = $request->input('link');
        $product->tittle = $request->input('tittle');
        $product->describe = $request->input('describe');
        $product->content = $request->input('content');
        $product->number = $request->input('number');
        $product->display = $request->has('display') ? 1 : 0;
        // $product->new_price = $request->input('new_price');
        $product->product_code = $request->input('product_code');
        $product->price = $request->input('price');
        $product->address = $request->input('address');
        $product->size = $request->input('size');
        $product->acreage = $request->input('acreage');
        $product->contact = $request->input('contact');
        $product->direction = $request->input('direction');
        $product->location = $request->input('location');
        $product->level1_product_id = $request->input('level1_product_id');
        $product->level2_product_id = $request->input('level2_product_id');
        // $product->schame = $request->input('schame');
        $product->seo_id = $seo->id;

        $product->seo()->associate($seo);
        $product->save();
        $galleryImages = $request->file('files');

        // Kiểm tra xem có hình ảnh được tải lên không
        if ($galleryImages) {
            foreach ($galleryImages as $image) {
                // Lưu hình ảnh vào thư mục lưu trữ và lấy đường dẫn
                // $filePath = $image->storeAs('products', $image->getClientOriginalName(), 'public');

                $filePath = $image->getClientOriginalName();

                // Di chuyển hình ảnh đến thư mục lưu trữ
                $image->move(public_path('products'), $filePath);
                // Tạo mới một bản ghi trong bảng Gallery
                $gallery = new Gallery();
                $gallery->product_id = $product->id; // ID của sản phẩm được cập nhật
                $gallery->image = $filePath; // Đường dẫn của hình ảnh trong thư mục lưu trữ
                $gallery->save();
            }
        } else {
            $gallery = new Gallery();
            $gallery->product_id = $product->id;
            $gallery->save();
        }
        return redirect()->route('show.product')->with('success', 'Bản ghi đã được tạo thành công!');
    }

    public function edit($id)
    {
        $product = Product::with(['seo', 'level1_product', 'level2_product'])->find($id);
        $category_level2 =  Level2_Product::all();
        $category_level1 =  Level1_Product::all();
        // dd($product);
        return view('admin.category.product_edit', compact('product', 'category_level2', 'category_level1',));
    }
    public function update(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $seo = $product->seo;

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            // Di chuyển hình ảnh đến thư mục lưu trữ
            $file->move(public_path('products'), $file_name);
            $product->image = $file_name;
        }

        $product->link = $request->input('link');
        $product->tittle = $request->input('tittle');
        $product->product_code = $request->input('product_code');
        $product->price = $request->input('price');
        $product->describe = $request->input('describe');
        $product->content = $request->input('content');
        $product->level1_product_id = $request->input('level1_product_id');
        $product->level2_product_id = $request->input('level2_product_id');
        $product->display = $request->has('display');
        $product->address = $request->input('address');
        $product->size = $request->input('size');
        $product->acreage = $request->input('acreage');
        $product->contact = $request->input('contact');
        $product->direction = $request->input('direction');
        $product->location = $request->input('location');

        $product->selling = $request->has('selling');
        $product->seo_id = $request->input('seo_id');
        $product->save();
        $galleryImages = $request->file('files');

        // Kiểm tra xem có hình ảnh được tải lên không
        if ($galleryImages) {
            foreach ($galleryImages as $image) {
                // Lưu hình ảnh vào thư mục lưu trữ và lấy đường dẫn
                // $filePath = $image->storeAs('products', $image->getClientOriginalName(), 'public');

                $filePath = $image->getClientOriginalName();

                // Di chuyển hình ảnh đến thư mục lưu trữ
                $image->move(public_path('products'), $filePath);
                // Tạo mới một bản ghi trong bảng Gallery
                $gallery = new Gallery();
                $gallery->product_id = $id; // ID của sản phẩm được cập nhật
                $gallery->image = $filePath; // Đường dẫn của hình ảnh trong thư mục lưu trữ
                $gallery->save();
            }
        }
        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();

        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    public function updateDisplayOutstand(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->outstand = $request->input('outstand') ? 1 : 0;
        $product->save();

        return response()->json(['success' => true]);
    }
    public function updateDisplayNew(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->new = $request->input('new') ? 1 : 0;
        $product->save();

        return response()->json(['success' => true]);
    }
    public function updateDisplayStatus(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->display = $request->input('display') ? 1 : 0;
        $product->save();

        return response()->json(['success' => true]);
    }
    public function updateNumber(Request $request)
    {
        try {
            $newNumber = $request->input('new_number');
            $itemId = $request->input('item_id');

            $item = Product::find($itemId);
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
    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();
        return back()->with('messageSucces', 'Xóa thành công');
    }
    public function copy($id)
    {
        $product = Product::where('id', $id)->first();

        $seo = new Seo();
        $seo->seo_tittle = $product->seo->seo_tittle;
        $seo->seo_keyword = $product->seo->seo_keyword;
        $seo->seo_description = $product->seo->seo_description;
        $seo->save();

        $new_product = new Product();
        $new_product->link = $product->link;
        $new_product->tittle = $product->tittle . ' copy';
        $new_product->image = $product->image;
        $new_product->display = $product->display;
        $new_product->describe = $product->describe;
        $new_product->content = $product->content;
        $new_product->number = $product->number;
        $new_product->level1_product_id = $product->level1_product_id;
        $new_product->level2_product_id = $product->level2_product_id;
        $new_product->seo_id = $seo->id;
        $product->seo()->associate($seo);
        // dd($new_product);
        $new_product->save();
        return redirect()->route('show.product')->with('success', 'Bản ghi đã được tạo thành công!');
    }
}
