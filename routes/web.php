<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\AdviseController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\Category1Controller;
use App\Http\Controllers\Category2Controller;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\FaviconController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\IntroduceController;
use App\Http\Controllers\LogoController;
use App\Http\Controllers\MailController;
use App\Http\Controllers\NetworkSocietyController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RealEstateController;
use App\Http\Controllers\RealEstateProceduresController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\SeoController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\SlideshowController;
use App\Http\Controllers\StaticPageController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('client.index');
});
Route::get('/', [IndexController::class, 'all']);
Route::get('/gioi-thieu', [IntroduceController::class, 'all']);
Route::get('/san-pham', [ProductController::class, 'all']);
Route::get('/san-pham/{link}', [ProductController::class, 'detail']);
Route::get('/san-phams', [ProductController::class, 'productLevel1']);
Route::get('/san-phamss', [ProductController::class, 'productLevel2']);
Route::get('/tu-van', [AdviseController::class, 'all']);
Route::get('/tu-van/{link}', [AdviseController::class, 'detail']);
Route::get('/tin-tuc', [NewsController::class, 'all']);
Route::get('/tin-tuc/{link}', [NewsController::class, 'detail']);
Route::get('/lien-he', [ContactController::class, 'all'])->name('show.contact');
Route::post('/lien-he', [ContactController::class, 'store'])->name('store.mail');
Route::get('/thu-tuc-nha-dat', [RealEstateProceduresController::class, 'all']);
Route::get('/thu-tuc-nha-dat/{link}', [RealEstateProceduresController::class, 'detail']);



Route::get('/admin', function () {
    return view('admin.dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
//clien

// admin
Route::controller(Category1Controller::class)->group(function () {
    Route::get('/category-level-1', 'show')->name('show.category1');
    Route::get('/category-level-1/create', 'create')->name('create.category1');
    Route::post('/category-level-1/store', 'store')->name('store.category1');
    Route::get('/category-level-1/edit/{category_level1}', 'edit')->name('edit.category1');
    Route::put('/category-level-1/update/{category_level1}', 'update')->name('update.category1');
    Route::delete('/category-level-1/{id}', 'destroy')->name('delete.category1');
    Route::post('/update-display-status-1/{id}', [Category1Controller::class, 'updateDisplayStatus'])->name('update-display-status-1');
    Route::post('/category-level-1', [Category1Controller::class, 'updateNumber'])->name('update.number_category1');
    Route::post('upload_image', 'uploadImage')->name('upload');
});

Route::controller(Category2Controller::class)->group(function () {
    Route::get('/category-level-2', 'show')->name('show.category2');
    Route::get('/category-level-2/create', 'create')->name('create.category2');
    Route::post('/category-level-2/store', 'store')->name('store.category2');
    Route::get('/category-level-2/edit/{category_level2}', 'edit')->name('edit.category2');
    Route::put('/category-level-2/update/{category_level2}', 'update')->name('update.category2');
    Route::delete('/category-level-2/{id}', 'destroy')->name('delete.category2');
    Route::post('/update-display-status-2/{id}', [Category2Controller::class, 'updateDisplayStatus'])->name('update-display-status-2');
    Route::post('/category-level-2', [Category2Controller::class, 'updateNumber'])->name('update.number_category2');
});

Route::controller(ProductController::class)->group(function () {
    Route::get('/product', 'show')->name('show.product');
    Route::get('/product/create', 'create')->name('create.product');
    Route::post('/product/store', 'store')->name('store.product');
    Route::get('/product/edit/{Product}', 'edit')->name('edit.product');
    Route::put('/product/update/{Product}', 'update')->name('update.product');
    Route::delete('/product/{id}', 'destroy')->name('delete.product');
    Route::post('/update-display-outstand-product/{id}', [ProductController::class, 'updateDisplayOutstand'])->name('update-display-outstand-product');
    Route::post('/update-display-new-product/{id}', [ProductController::class, 'updateDisplayNew'])->name('update-display-new-product');
    Route::post('/update-display-status-product/{id}', [ProductController::class, 'updateDisplayStatus'])->name('update-display-status-product');
    Route::post('/update-checkbox', [ProductController::class, 'updateCheckbox']);
    Route::post('/product', [ProductController::class, 'updateNumber'])->name('update.number_product');
});
Route::controller(GalleryController::class)->group(function () {
    Route::get('/product/gallery/{product_id}', 'show')->name('show.gallery');
    Route::get('/product/gallery/create/{product_id}', 'create')->name('create.gallery');
    Route::post('/product/gallery/create', 'store')->name('store.gallery');
    // Route::get('/product/gallery/edit/{product_id}', 'edit')->name('edit.gallery');
    // Route::put('/product/gallery/edit/{product_id}', 'update')->name('update.gallery');
    Route::get('/product/gallery/edit/{gallery}', 'edit')->name('edit.gallery');
    Route::put('/product/gallery/edit/{gallery}', 'update')->name('update.gallery');
    Route::delete('/product/gallery/{id}', 'destroy')->name('delete.gallery');
});

Route::controller(NewsController::class)->group(function () {
    Route::get('/post/news', 'show')->name('show.news');
    Route::post('/update-display-outstand-news/{id}', [NewsController::class, 'updateDisplayOutstand'])->name('update-display-outstand-news');
    Route::post('/update-display-status-news/{id}', [NewsController::class, 'updateDisplayStatus'])->name('update-display-status-news');
    Route::post('/post/news', [NewsController::class, 'updateNumber'])->name('update.number_news');
    Route::get('/post/news/create', 'create')->name('create.news');
    Route::post('/post/news/store', 'store')->name('store.news');
    Route::get('/post/news/edit/{id}', 'edit')->name('edit.news');
    Route::put('/post/news/update/{id}', 'update')->name('update.news');
    Route::delete('/post/news/{id}', 'destroy')->name('delete.news');
});

Route::controller(RealEstateController::class)->group(function () {
    Route::get('/post/real-estate', 'show')->name('show.real_estate');
    Route::post('/update-display-outstand-real-estate/{id}', [RealEstateController::class, 'updateDisplayOutstand'])->name('update-display-outstand-real_estate');
    Route::post('/update-display-status-real-estate/{id}', [RealEstateController::class, 'updateDisplayStatus'])->name('update-display-status-real_estate');
    Route::post('/post/real-estate', [RealEstateController::class, 'updateNumber'])->name('update.number_real_estate');
    Route::get('/post/real-estate/create', 'create')->name('create.real_estate');
    Route::post('/post/real-estate/store', 'store')->name('store.real_estate');
    Route::get('/post/real-estate/edit/{id}', 'edit')->name('edit.real_estate');
    Route::put('/post/real-estate/update/{id}', 'update')->name('update.real_estate');
    Route::delete('/post/real-estate/{id}', 'destroy')->name('delete.real_estate');
});

Route::controller(AdviseController::class)->group(function () {
    Route::get('/post/advise', 'show')->name('show.advise');
    // Route::post('/update-display-outstand-advise/{id}', [AdviseController::class, 'updateDisplayOutstand'])->name('update-display-outstand-advise');
    Route::post('/update-display-status-advise/{id}', [AdviseController::class, 'updateDisplayStatus'])->name('update-display-status-advise');
    Route::post('/post/advise', [AdviseController::class, 'updateNumber'])->name('update.number_advise');
    Route::get('/post/advise/create', 'create')->name('create.advise');
    Route::post('/post/advise/store', 'store')->name('store.advise');
    Route::get('/post/advise/edit/{id}', 'edit')->name('edit.advise');
    Route::put('/post/advise/update/{id}', 'update')->name('update.advise');
    Route::delete('/post/advise/{id}', 'destroy')->name('delete.advise');
});

Route::controller(MailController::class)->group(function () {
    Route::get('/receive-news/contact-letter', 'show')->name('show.mail.contact');
    Route::post('/receive-news/contact-letter', [MailController::class, 'updateNumber'])->name('update.number_mail');
    Route::get('/receive-news/contact-letter/create', 'create')->name('create.mail.contact');
    Route::post('/receive-news/contact-letter/create', 'store')->name('store.mail.contact');
    Route::get('/receive-news/contact-letter/edit/{contact}', 'edit')->name('edit.mail.contact');
    Route::put('/receive-news/contact-letter/edit/{contact}', 'update')->name('update.mail.contact');
    Route::delete('/receive-news/contact-letter/{id}', 'destroy')->name('delete.mail.contact');

    // đăng ký tư vấn
    Route::get('/receive-news/register-consultation', 'show_register')->name('show.register_consultation');
    Route::post('/receive-news/register-consultation/create', 'send_email')->name('send.email');
});

Route::controller(StaticPageController::class)->group(function () {
    Route::get('/static-page/introduce/{introduce}', 'edit_introduce')->name('edit.introduce');
    Route::put('/static-page/introduce/{introduce}', 'update_introduce')->name('update.introduce');

    Route::get('/static-page/register-consultation/{consultation}', 'edit_register_consultation')->name('edit.register_consultation');
    Route::put('/static-page/register-consultation/{consultation}', 'update_register_consultation')->name('update.register_consultation');

    Route::get('/static-page/contact/{contact}', 'edit_contact')->name('edit.contact');
    Route::put('/static-page/contact/{contact}', 'update_contact')->name('update.contact');

    Route::get('/static-page/support-customer/{support_customer}', 'edit_support_customer')->name('edit.support_customer');
    Route::put('/static-page/support-customer/{support_customer}', 'update_support_customer')->name('update.support_customer');

    Route::get('/static-page/footer/{footer}', 'edit_footer')->name('edit.footer');
    Route::put('/static-page/footer/{footer}', 'update_footer')->name('update.footer');
});

Route::controller(LogoController::class)->group(function () {
    Route::get('/image-video/logo/{logo}', 'edit')->name('edit.logo');
    Route::put('/image-video/logo/{logo}', 'update')->name('update.logo');
    Route::delete('/image-video/logo/{id}', 'destroy')->name('delete.image_video.logo');
});
Route::controller(BannerController::class)->group(function () {
    Route::get('/image-video/banner/{banner}', 'edit')->name('edit.banner');
    Route::put('/image-video/banner/{banner}', 'update')->name('update.banner');
});
Route::controller(FaviconController::class)->group(function () {
    Route::get('/image-video/favicon/{favicon}', 'edit')->name('edit.favicon');
    Route::put('/image-video/favicon/{favicon}', 'update')->name('update.favicon');
    Route::delete('/image-video/favicon/{id}', 'destroy')->name('delete.image_video.favicon');
});
Route::controller(SlideshowController::class)->group(function () {
    Route::get('/image-video/slideshow', 'show')->name('show.slideshow');
    Route::post('/update-display-status-slideshow/{id}', [SlideshowController::class, 'updateDisplayStatus'])->name('update-display-status-slideshow');
    Route::post('/image-video/slideshow', [SlideshowController::class, 'updateNumber'])->name('update.number_slideshow');
    Route::get('/image-video/slideshow/create', 'create')->name('create.slideshow');
    Route::post('/image-video/slideshow/store', 'store')->name('store.slideshow');
    Route::get('/image-video/slideshow/edit/{slideshow}', 'edit')->name('edit.slideshow');
    Route::put('/image-video/slideshow/update/{slideshow}', 'update')->name('update.slideshow');
    Route::delete('/image-video/slideshow/{id}', 'destroy')->name('delete.image_video.slideshow');
});
Route::controller(NetworkSocietyController::class)->group(function () {
    Route::get('/image-video/network-society', 'show')->name('show.network-society');
    Route::post('/update-display-status-network-society/{id}', [NetworkSocietyController::class, 'updateDisplayStatus'])->name('update-display-status-network-society');
    Route::post('/image-video/network-society', [NetworkSocietyController::class, 'updateNumber'])->name('update.number_network_society');
    Route::get('/image-video/network-society/create', 'create')->name('create.network-society');
    Route::post('/image-video/network-society/store', 'store')->name('store.network-society');
    Route::get('/image-video/network-society/edit/{network_society}', 'edit')->name('edit.network-society');
    Route::put('/image-video/network-society/update/{network_society}', 'update')->name('update.network-society');
    Route::delete('/image-video/network-society/{id}', 'destroy')->name('delete.image_video.network-society');
});
Route::controller(AccountController::class)->group(function () {
    Route::get('/user/{user}', 'edit')->name('edit.user');
    Route::put('/user/{user}', 'update')->name('update.user');
    Route::get('/users/resset-password/{user}', 'edit_password')->name('edit.resset-password');
    Route::put('/users/resset-password/{user}', 'update_password')->name('update.resset-password');
});

Route::controller(SeoController::class)->group(function () {
    //nhà đất
    Route::get('/seo-page/real-estate/{real_estate}', 'edit_real_estate')->name('edit.seo_page.real_estate');
    Route::put('/seo-page/real-estate/{real_estate}', 'update_real_estate')->name('update.seo_page.real_estate');
    //tin tức
    Route::get('/seo-page/news/{news}', 'edit_news')->name('edit.seo_page.news');
    Route::put('/seo-page/news/{news}', 'update_news')->name('update.seo_page.news');
    //thủ tục nhà đất
    Route::get('/seo-page/real-estate-procedures/{real_estate_procedures}', 'edit_real_estate_procedures')->name('edit.seo_page.real_estate_procedures');
    Route::put('/seo-page/real-estate-procedures/{real_estate_procedures}', 'update_real_estate_procedures')->name('update.seo_page.real_estate_procedures');
    //tư vấn
    Route::get('/seo-page/advise/{advise}', 'edit_advise')->name('edit.seo_page.advise');
    Route::put('/seo-page/advise/{advise}', 'update_advise')->name('update.seo_page.advise');
});

Route::controller(SettingController::class)->group(function () {
    Route::get('/setting/{setting}', 'edit')->name('edit.setting');
    Route::put('/setting/{setting}', 'update')->name('update.setting');
});

Route::get('/tim-kiem', [SearchController::class, 'search']);
