<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Administrator - NHÀ ĐẤT MINH PHÁT</title>
    <link rel="stylesheet" href="{{ url('./css/adminlte.css') }}">
    <link rel="stylesheet" href="{{ url('./css/adminlte-style.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/adminlte.js') }}"></script>
    <script src="{{ asset('js/bootstrap.bundle.js') }}"></script>
    <script src="{{ asset('js/priceFormat.js') }}"></script>
    <script src="{{ asset('js/moment.min.js') }}"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>

<body>
    <nav class="main-header navbar navbar-expand navbar-white navbar-light text-sm">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item nav-item-hello d-sm-inline-block">
                <a class="nav-link"><span class="text-split">Xin chào, {{ Auth::user()->name }}!</span></a>
            </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <!-- Notifications -->
            <li class="nav-item d-sm-inline-block">
                <a href="/" target="_blank" class="nav-link"><i class="fas fa-reply"></i></a>
            </li>
            <li class="nav-item dropdown">
                <a id="dropdownSubMenu-info" href="#" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false" class="nav-link dropdown-toggle"><i class="fas fa-cogs"></i></a>
                <ul aria-labelledby="dropdownSubMenu-info" class="dropdown-menu dropdown-menu-right border-0 shadow">
                    <li>
                        <a href="/user/1" class="dropdown-item">
                            <i class="fas fa-user-cog"></i>
                            <span>Thông tin admin</span>
                        </a>
                    </li>
                    <div class="dropdown-divider"></div>
                    <li>
                        <a href="/users/resset-password/1" class="dropdown-item">
                            <i class="fas fa-key"></i>
                            <span>Đổi mật khẩu</span>
                        </a>
                    </li>
                    <div class="dropdown-divider"></div>
                    <li>
                        <a href="#" class="dropdown-item">
                            <i class="far fa-trash-alt"></i>
                            <span>Xóa bộ nhớ tạm</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="fas fa-bell"></i>
                    <span class="badge badge-danger"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right shadow">
                    <span class="dropdown-item dropdown-header p-0">Thông báo</span>


                    <div class="dropdown-divider"></div>
                    <a href="/receive-news/contact-letter" class="dropdown-item"><i
                            class="fas fa-mail-bulk mr-2"></i></i><span class="badge badge-danger mr-1"></span> Thư
                        liên hệ</a>
                    <div class="dropdown-divider"></div>
                    <a href="/receive-news/register-consultation" class="dropdown-item"><i
                            class="fas fa-mail-bulk mr-2"></i></i><span class="badge badge-danger mr-1"></span> Đăng ký
                        tư vấn</a>
                    <div class="dropdown-divider"></div>

                </div>
            </li>
            <li class="nav-item d-sm-inline-block">
                <a href="{{ route('logout') }}"onclick="event.preventDefault(); document.getElementById('logout-form').submit();"
                    class="nav-link"><i class="fas fa-sign-out-alt mr-1"></i>Đăng
                    xuất</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            </li>
        </ul>
    </nav><!-- Main Sidebar -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4 text-sm">
        <!-- Logo -->


        <!-- Sidebar -->
        <img src="{{ asset('images/logo-blue.png') }}" alt="logo"
            style="width: 190px; margin-top: 45px; margin-left: 20px;">

        <div class="sidebar">

            <nav class="mt-3">
                <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent text-sm" data-widget="treeview"
                    role="menu" data-accordion="false">
                    <!-- Bảng điều khiển -->
                    <li class="nav-item active">
                        <a class="nav-link " href="/admin" title="Bảng điều khiển">
                            <i class="nav-icon text-sm fas fa-tachometer-alt"></i>
                            <p>Bảng điều khiển</p>
                        </a>
                    </li>

                    <!-- Group -->

                    <!-- Sản phẩm -->
                    <li class="nav-item has-treeview  ">
                        <a class="nav-link " href="#" title="Quản lý Nhà đất">
                            <i class="nav-icon text-sm fas fa-boxes"></i>
                            <p>
                                Quản lý sản phẩm <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item "><a class="nav-link " href="/category-level-1"
                                    title="Danh mục cấp 1"><i class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Danh mục cấp 1</p>
                                </a></li>
                            <li class="nav-item "><a class="nav-link " href="/category-level-2"
                                    title="Danh mục cấp 2"><i class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Danh mục cấp 2</p>
                                </a></li>

                            <li class="nav-item "><a class="nav-link" href="/product" title="Sản phẩm"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Nhà đất</p>
                                </a></li>

                        </ul>
                    </li>

                    <!-- Bài viết (Có cấp) -->

                    <!-- Bài viết (Không cấp) -->
                    <li class="nav-item has-treeview  ">
                        <a class="nav-link " href="#" title="Quản lý user">
                            <i class="nav-icon text-sm fas fa-users"></i>
                            <p>
                                Quản lý bài viết
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item"><a class="nav-link " href="/post/news" title="Thông tin admin"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Tin tức</p>
                                </a></li>
                            <li class="nav-item"><a class="nav-link " href="/post/real-estate"
                                    title="Thông tin admin"><i class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Thủ tục nhà đất</p>
                                </a></li>
                            <li class="nav-item"><a class="nav-link " href="/post/advise" title="Thông tin admin"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Tư vấn</p>
                                </a></li>
                        </ul>
                    </li>

                    <!-- Cart -->

                    <!-- Tags -->

                    <!-- Newsletter -->
                    <li class="nav-item has-treeview  ">
                        <a class="nav-link " href="#" title="Quản lý nhận tin">
                            <i class="nav-icon text-sm fas fa-envelope"></i>
                            <p>
                                Quản lý nhận tin
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item ">
                                <a class="nav-link " href="/receive-news/contact-letter" title="Hỗ trợ khách hàng"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Thư liên hệ</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="/receive-news/register-consultation"
                                    title="Hỗ trợ khách hàng"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Đăng ký tư vấn</p>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- Static -->
                    <li class="nav-item has-treeview  ">
                        <a class="nav-link " href="#" title="Quản lý trang tĩnh">
                            <i class="nav-icon text-sm fas fa-bookmark"></i>
                            <p>
                                Quản lý trang tĩnh
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item ">
                                <a class="nav-link  active" href="/static-page/introduce/1" title="Giới thiệu"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Giới thiệu</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/static-page/contact/1" title="Liên hệ"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Liên hệ</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/static-page/register-consultation/1" title="Liên hệ"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Text đăng ký tư vấn</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/static-page/support-customer/1"
                                    title="Text đăng ký tư vấn"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Hỗ trợ khách hàng</p>
                                </a>
                            </li>

                            <li class="nav-item ">
                                <a class="nav-link " href="/static-page/footer/1" title="Footer"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Footer</p>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- Gallery -->
                    <li class="nav-item has-treeview  ">
                        <a class="nav-link" href="#" title="Quản lý hình ảnh - video">
                            <i class="nav-icon text-sm fas fa-photo-video"></i>
                            <p>
                                Quản lý hình ảnh - video
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">

                            <li class="nav-item ">
                                <a class="nav-link" href="/image-video/logo/1" title="Logo"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Logo</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/image-video/banner/1" title="Banner"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Banner</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/image-video/favicon/1" title="Favicon"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Favicon</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/image-video/slideshow" title="Slideshow"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Slideshow</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="/image-video/network-society" title="Mạng xã hội"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Mạng xã hội</p>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- Địa điểm -->

                    <!-- User -->
                    <li class="nav-item has-treeview  ">
                        <a class="nav-link " href="#" title="Quản lý user">
                            <i class="nav-icon text-sm fas fa-photo-video"></i>
                            <p>
                                Quản lý user
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">

                            <li class="nav-item ">
                                <a class="nav-link " href="/user/1" title="user"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Thông tin admin</p>
                                </a>
                            </li>
                        </ul>
                    </li>


                    <!-- Onesignal -->

                    <!-- SEO page -->
                    <li class="nav-item has-treeview  ">
                        <a class="nav-link " href="#" title="Quản lý SEO page">
                            <i class="nav-icon text-sm fas fa-share-alt"></i>
                            <p>
                                Quản lý SEO page
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item ">
                                <a class="nav-link " href="/seo-page/real-estate/1" title="Sản phẩm"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Nhà đất</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/seo-page/news/1" title="Bảng báo giá"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Tin tức</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/seo-page/real-estate-procedures/1" title="Tin tức"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Thủ tục nhà đất</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="/seo-page/advise/1" title="Video"><i
                                        class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Tư vấn</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- Thiết lập thông tin -->
                    <li class="nav-item  ">
                        <a class="nav-link active" href="/setting/1" title="Thiết lập thông tin">
                            <i class="nav-icon text-sm fas fa-cogs"></i>
                            <p>Thiết lập thông tin</p>
                        </a>
                    </li>
                </ul>
            </nav>
    </aside>
    <div class="content-wrapper">
        <section class="content-header text-sm">
            <div class="container-fluid">
                <div class="row">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="index.php" title="Bảng điều khiển">Bảng điều khiển</a>
                        </li>
                        <li class="breadcrumb-item active">Thông tin công ty</li>
                    </ol>
                </div>
            </div>
        </section>
        <!-- Main content -->
        <section class="content">
            <form class="validation-form" novalidate method="post" action="{{ route('edit.setting', $setting) }}"
                enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <input type="hidden" name="seo_id" value="{{ $setting->seo_id }}">
                <div class="card-footer text-sm sticky-top">
                    <button type="submit" class="btn btn-sm bg-gradient-primary submit-check"><i
                            class="far fa-save mr-2"></i>Lưu</button>
                    <button type="reset" class="btn btn-sm bg-gradient-secondary"><i
                            class="fas fa-redo mr-2"></i>Làm lại</button>
                </div>
                <div class="card card-primary card-outline text-sm">
                    <div class="card-header">
                        <h3 class="card-title">Thông tin chung</h3>
                    </div>
                    <div class="card-body">
                        <div class="card card-primary card-outline card-outline-tabs">
                            <div class="card-header p-0 border-bottom-0">
                                <ul class="nav nav-tabs" id="custom-tabs-three-tab-lang" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="tabs-lang" data-toggle="pill"
                                            href="#tabs-lang-vi" role="tab" aria-controls="tabs-lang-vi"
                                            aria-selected="true">Tiếng Việt</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body card-article">
                                <div class="tab-content" id="custom-tabs-three-tabContent-lang">
                                    <div class="tab-pane fade show active" id="tabs-lang-vi" role="tabpanel"
                                        aria-labelledby="tabs-lang">
                                        <div class="form-group">
                                            <label for="tenvi">Tiêu đề (vi):</label>
                                            <input type="text" class="form-control for-seo" name="tittle"
                                                id="tenvi" placeholder="Tiêu đề (vi)"
                                                value="{{ old('tittle') ?? $setting->tittle }}" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="diachi">Địa chỉ (vi):</label>
                                            <input type="text" class="form-control" name="address" id="diachivi"
                                                placeholder="Địa chỉ (vi)"
                                                value="{{ old('address') ?? $setting->address }}" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="copyvi">Tên copyright (vi):</label>
                                            <input type="text" class="form-control" name="copyright"
                                                id="copyvi" placeholder="Tên copyright (vi)"
                                                value="{{ old('copyright') ?? $setting->copyright }}" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" name="email" id="email"
                                    placeholder="Email" value="{{ old('email') ?? $setting->email }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="hotline">Hotline:</label>
                                <input type="text" class="form-control" name="hotline" id="hotline"
                                    placeholder="Hotline" value="{{ old('hotline') ?? $setting->hotline }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="dienthoai">Điện thoại:</label>
                                <input type="text" class="form-control" name="phone" id="dienthoai"
                                    placeholder="Điện thoại" value="{{ old('phone') ?? $setting->phone }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="zalo">Zalo:</label>
                                <input type="text" class="form-control" name="zalo" id="zalo"
                                    placeholder="Zalo" value="{{ old('zalo') ?? $setting->zalo }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="website">Website:</label>
                                <input type="text" class="form-control" name="website" id="website"
                                    placeholder="Website" value="{{ old('website') ?? $setting->website }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="fanpage">Fanpage:</label>
                                <input type="text" class="form-control" name="fanpage" id="fanpage"
                                    placeholder="Fanpage" value="{{ old('fanpage') ?? $setting->fanpage }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="toado">Tọa độ google map:</label>
                                <input type="text" class="form-control" name="map" id="toado"
                                    placeholder="Tọa độ google map" value="{{ old('map') ?? $setting->map }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="hethong">Link chỉ đường:</label>
                                <input type="text" class="form-control" name="link" id="hethong"
                                    placeholder="Link chỉ đường" value="{{ old('link') ?? $setting->link }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="thoigian">Thời gian làm việc:</label>
                                <input type="date" class="form-control" name="time" id="thoigian"
                                    placeholder="Thời gian làm việc" value="{{ old('time') ?? $setting->time }}">
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="sp">Số sản phẩm / Trang:</label>
                                <input type="number" class="form-control" name="" id="sp"
                                    placeholder="" value="" disabled>
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="sp1">Số sản phẩm liên quan / Trang:</label>
                                <input type="number" class="form-control" name="" id="sp1"
                                    placeholder="" value="" disabled>
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="tt">Số bài viết / Trang:</label>
                                <input type="number" class="form-control" name="" id="tt"
                                    placeholder="" value="" disabled>
                            </div>
                            <div class="form-group col-md-4 col-sm-6">
                                <label for="tt1">Số bài viết liên quan / Trang:</label>
                                <input type="number" class="form-control" name="" id="tt1"
                                    placeholder="" value="" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="toado_iframe">
                                <span>Tọa độ google map iframe:</span>
                                <a class="text-sm font-weight-normal ml-1" href="https://www.google.com/maps"
                                    target="_blank" title="Lấy mã nhúng google map">(Lấy mã nhúng)</a>
                            </label>
                            <textarea class="form-control" name="map_iframe" id="toado_iframe" rows="5"
                                placeholder="Tọa độ google map iframe">{{ old('map_iframe') ?? $setting->map_iframe }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="analytics">Google analytics:</label>
                            <textarea class="form-control" name="gg_analytic" id="analytics" rows="5" placeholder="Google analytics">
                                {{ old('gg_analytic') ?? $setting->gg_analytic }}
                            </textarea>
                        </div>
                        <div class="form-group">
                            <label for="mastertool">Google Webmaster Tool:</label>
                            <textarea class="form-control" name="gg_webmaster_tool" id="mastertool" rows="5"
                                placeholder="Google Webmaster Tool">
                                {{ old('gg_webmaster_tool') ?? $setting->gg_webmaster_tool }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="headjs">Head JS:</label>
                            <textarea class="form-control" name="head_js" id="headjs" rows="5" placeholder="Head JS">
                                {{ old('head_js') ?? $setting->head_js }}
                            </textarea>
                        </div>
                        <div class="form-group">
                            <label for="bodyjs">Body JS:</label>
                            <textarea class="form-control" name="body_js" id="bodyjs" rows="5" placeholder="Body JS">
                                {{ old('body_js') ?? $setting->body_js }}
                            </textarea>
                        </div>
                    </div>
                </div>
                <div class="card card-primary card-outline text-sm">
                    <div class="card-header">
                        <h3 class="card-title">Nội dung SEO</h3>
                        <a class="btn btn-sm bg-gradient-success d-inline-block text-white float-right create-seo"
                            title="Tạo SEO">Tạo SEO</a>
                    </div>
                    <div class="card-body">
                        <!-- SEO -->
                        <div class="card-seo">
                            <div class="card card-primary card-outline card-outline-tabs">
                                <div class="card-header p-0 border-bottom-0">
                                    <ul class="nav nav-tabs" id="custom-tabs-three-tab-lang" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="tabs-lang" data-toggle="pill"
                                                href="#tabs-seolang-vi" role="tab"
                                                aria-controls="tabs-seolang-vi" aria-selected="true">SEO (Tiếng
                                                Việt)</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <div class="tab-content" id="custom-tabs-three-tabContent-lang">
                                        <div class="tab-pane fade show active" id="tabs-seolang-vi" role="tabpanel"
                                            aria-labelledby="tabs-lang">
                                            <div class="form-group ">
                                                <div class="label-seo">
                                                    <label for="titlevi">SEO Title (vi):</label>
                                                    <strong class="count-seo-tittle"><span>67</span>/70 ký tự</strong>
                                                </div>
                                                <input type="text" class="form-control check-seo title-seo"
                                                    name="seo_tittle" id="titlevi" placeholder="SEO Title (vi)"
                                                    value="{{ old('seo_tittle') ?? $setting->seo->seo_tittle }}">
                                            </div>
                                            <div class="form-group ">
                                                <div class="label-seo">
                                                    <label for="keywordsvi">SEO Keywords (vi):</label>
                                                    <strong class="count-seo-keywords"><span>0</span>/70 ký tự</strong>
                                                </div>
                                                <input type="text" class="form-control check-seo keywords-seo"
                                                    name="seo_keyword" id="keywordsvi"
                                                    placeholder="SEO Keywords (vi)"
                                                    value="{{ old('seo_keyword') ?? $setting->seo->seo_keyword }}">
                                            </div>
                                            <div class="form-group ">
                                                <div class="label-seo">
                                                    <label for="descriptionvi">SEO Description (vi):</label>
                                                    <strong class="count-seo-description"><span>0</span>/160 ký
                                                        tự</strong>
                                                </div>
                                                <textarea class="form-control check-seo description-seo" name="seo_description" id="descriptionvi" rows="5"
                                                    placeholder="SEO Description (vi)">{{ old('seo_description') ?? $setting->seo->seo_description }}</textarea>
                                            </div>

                                            <!-- SEO preview -->
                                            <div
                                                class="form-group form-group-seo-preview callout callout-warning mb-0 d-none">
                                                <label class="label-seo-preview"><i class="fas fa-info mr-2"></i>Khi
                                                    lên top, page này sẽ hiển thị theo dạng mẫu như sau:</label>
                                                <div class="seo-preview">
                                                    <p class="slug-seo-preview" id="seourlpreviewvi"
                                                        data-seourlstatic="0">https://phatnang.com/<strong></strong>
                                                    </p>
                                                    <p class="title-seo-preview text-split" id="title-seo-previewvi">
                                                    </p>
                                                    <p class="description-seo-preview text-split"
                                                        id="description-seo-previewvi"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" id="seo-create" value="vi">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-sm">
                    <button type="submit" class="btn btn-sm bg-gradient-primary submit-check"><i
                            class="far fa-save mr-2"></i>Lưu</button>
                    <button type="reset" class="btn btn-sm bg-gradient-secondary"><i
                            class="fas fa-redo mr-2"></i>Làm lại</button>
                    <input type="hidden" name="id" value="18">
                </div>
            </form>
        </section>
        @if (Session::has('messageSucces'))
            <script>
                swal({
                    title: 'Thành công',
                    text: "{{ Session::get('messageSucces') }}",
                    icon: 'success',
                    button: {
                        className: 'custom-btn-class'
                    }
                });
            </script>
        @endif
    </div>
    {{-- Tạo seo --}}
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Lấy reference đến nút "Tạo SEO"
            var createSeoButton = document.querySelector('.create-seo');

            // Gắn sự kiện click cho nút "Tạo SEO"
            createSeoButton.addEventListener('click', generateSEO);

            function generateSEO() {
                // Lấy giá trị từ form Tiếng Việt
                var titleVi = document.getElementById('tenvi').value;
                var describeVi = document.getElementById('noidungvi').value;
                var tempDiv = document.createElement("div");
                tempDiv.innerHTML = describeVi;
                var plainText = tempDiv.textContent || tempDiv.innerText || "";

                // Gán giá trị vào form SEO
                document.getElementById('titlevi').value = titleVi;
                document.getElementById('keywordsvi').value = titleVi;
                document.getElementById('descriptionvi').value = plainText;

                // Cập nhật số ký tự cho các trường trong form SEO
                updateCharCount('titlevi', '.count-seo-tittle span', 70);
                updateCharCount('keywordsvi', '.count-seo-keywords span', 70);
                updateCharCount('descriptionvi', '.count-seo-description span', 160);
            }

            // Hàm cập nhật số ký tự
            function updateCharCount(inputId, countElementSelector, limit) {
                var input = document.getElementById(inputId);
                var countElement = document.querySelector(countElementSelector);

                // Lấy độ dài của giá trị đang nhập
                var inputLength = input.value.length;

                // Kiểm tra nếu độ dài vượt quá giới hạn
                if (inputLength > limit) {
                    // Cắt bớt giá trị nhập vào để chỉ giữ lại số ký tự giới hạn
                    input.value = input.value.substring(0, limit);
                    inputLength = limit; // Cập nhật lại độ dài sau khi cắt bớt
                }

                // Hiển thị số ký tự và giới hạn nó trong khoảng 0 - limit
                countElement.textContent = inputLength;
            }

            // Gọi hàm để cập nhật số ký tự cho mỗi trường SEO khi tài liệu được tải
            updateCharCount('titlevi', '.count-seo-tittle span', 70);
            updateCharCount('keywordsvi', '.count-seo-keywords span', 70);
            updateCharCount('descriptionvi', '.count-seo-description span', 160);
        });
    </script>
    {{-- Đếm kí tự --}}

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Lấy phần tử input
            var titleInput = document.querySelector('.title-seo', '');

            // Lấy phần tử hiển thị số ký tự
            var countElement = document.querySelector('.count-seo-tittle span');

            // Gắn sự kiện 'input' để theo dõi sự thay đổi
            titleInput.addEventListener('input', function() {
                // Lấy độ dài của giá trị đang nhập
                var inputLength = titleInput.value.length;

                // Kiểm tra nếu độ dài vượt quá giới hạn
                if (inputLength > 70) {
                    // Cắt bớt giá trị nhập vào để chỉ giữ lại 70 ký tự
                    titleInput.value = titleInput.value.substring(0, 70);
                    inputLength = 70; // Cập nhật lại độ dài sau khi cắt bớt
                }

                // Hiển thị số ký tự và giới hạn nó trong khoảng 0 - 70
                countElement.textContent = inputLength;
            });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Lấy phần tử input
            var titleInput = document.querySelector('.keywords-seo', '');

            // Lấy phần tử hiển thị số ký tự
            var countElement = document.querySelector('.count-seo-keywords span');

            // Gắn sự kiện 'input' để theo dõi sự thay đổi
            titleInput.addEventListener('input', function() {
                // Lấy độ dài của giá trị đang nhập
                var inputLength = titleInput.value.length;

                // Kiểm tra nếu độ dài vượt quá giới hạn
                if (inputLength > 70) {
                    // Cắt bớt giá trị nhập vào để chỉ giữ lại 70 ký tự
                    titleInput.value = titleInput.value.substring(0, 70);
                    inputLength = 70; // Cập nhật lại độ dài sau khi cắt bớt
                }

                // Hiển thị số ký tự và giới hạn nó trong khoảng 0 - 70
                countElement.textContent = inputLength;
            });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Lấy phần tử input
            var titleInput = document.querySelector('.description-seo', '');

            // Lấy phần tử hiển thị số ký tự
            var countElement = document.querySelector('.count-seo-description span');

            // Gắn sự kiện 'input' để theo dõi sự thay đổi
            titleInput.addEventListener('input', function() {
                // Lấy độ dài của giá trị đang nhập
                var inputLength = titleInput.value.length;

                // Kiểm tra nếu độ dài vượt quá giới hạn
                if (inputLength > 160) {
                    // Cắt bớt giá trị nhập vào để chỉ giữ lại 70 ký tự
                    titleInput.value = titleInput.value.substring(0, 160);
                    inputLength = 160; // Cập nhật lại độ dài sau khi cắt bớt
                }

                // Hiển thị số ký tự và giới hạn nó trong khoảng 0 - 70
                countElement.textContent = inputLength;
            });
        });
    </script>


</body>

</html>
