<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Administrator - NHÀ ĐẤT MINH PHÁT</title>
    <link rel="stylesheet" href="{{ url('./css/adminlte.css') }}">
    <link rel="stylesheet" href="{{ url('./css/adminlte-style.css') }}">
    <link rel="stylesheet" href="{{ url('./assets/filer/icons-filer/icons-filer.css') }}">
    <link rel="stylesheet" href="{{ url('./assets/filer/jquery.filer-dragdropbox-theme.css') }}">
    <link rel="stylesheet" href="{{ url('./assets/filer/jquery.filer.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/adminlte.js') }}"></script>
    <script src="{{ asset('js/bootstrap.bundle.js') }}"></script>
    <script src="{{ asset('js/priceFormat.js') }}"></script>
    <script src="{{ asset('js/moment.min.js') }}"></script>
    <script src="{{ asset('assets/ckeditor/ckeditor.js') }}"></script>
    <script src="{{ asset('assets/filer/jquery.filer.js') }}"></script>
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
                        <a class="nav-link active" href="#" title="Quản lý Nhà đất">
                            <i class="nav-icon text-sm fas fa-boxes"></i>
                            <p>
                                Quản lý sản phẩm <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview" style="display: block">
                            <li class="nav-item "><a class="nav-link " href="/category-level-1"
                                    title="Danh mục cấp 1"><i class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Danh mục cấp 1</p>
                                </a></li>
                            <li class="nav-item "><a class="nav-link " href="/category-level-2"
                                    title="Danh mục cấp 2"><i class="nav-icon text-sm far fa-caret-square-right"></i>
                                    <p>Danh mục cấp 2</p>
                                </a></li>

                            <li class="nav-item "><a class="nav-link active" href="/product" title="Sản phẩm"><i
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
                                <a class="nav-link " href="/receive-news/register-consultation"
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
                                <a class="nav-link " href="/static-page/introduce/1" title="Giới thiệu"><i
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
                        <a class="nav-link " href="#" title="Quản lý hình ảnh - video">
                            <i class="nav-icon text-sm fas fa-photo-video"></i>
                            <p>
                                Quản lý hình ảnh - video
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">

                            <li class="nav-item ">
                                <a class="nav-link " href="/image-video/logo/1" title="Logo"><i
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
                                <a class="nav-link " href="/image-video/network-society" title="Mạng xã hội"><i
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
                        <a class="nav-link " href="/setting/1" title="Thiết lập thông tin">
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
                        <li class="breadcrumb-item"><a href="/dashboard" title="Bảng điều khiển">Bảng điều khiển</a>
                        </li>
                        <li class="breadcrumb-item active">Thêm mới Sản Phẩm</li>
                    </ol>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <form class="validation-form" novalidate method="post" action="{{ route('update.product', $product) }}"
                enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <input type="hidden" value="{{ $product->seo_id }}" name="seo_id">
                <div class="card-footer text-sm sticky-top">
                    <button type="submit" class="btn btn-sm bg-gradient-primary submit-check"><i
                            class="far fa-save mr-2"></i>Lưu</button>
                    <button type="submit" class="btn btn-sm bg-gradient-success submit-check" name="save-here"><i
                            class="far fa-save mr-2"></i>Lưu tại trang</button>
                    <button type="reset" class="btn btn-sm bg-gradient-secondary"><i
                            class="fas fa-redo mr-2"></i>Làm lại</button>
                    <a class="btn btn-sm bg-gradient-danger" href="/product" title="Thoát"><i
                            class="fas fa-sign-out-alt mr-2"></i>Thoát</a>
                </div>
                <div class="row">
                    <div class="col-xl-8">
                        <div class="card card-primary card-outline text-sm">
                            <div class="card-header">
                                <h3 class="card-title">Đường dẫn</h3>
                                <span class="pl-2 text-danger">(Vui lòng không nhập trùng tiêu đề)</span>
                            </div>
                            <div class="card-body card-slug">

                                {{-- <input type="hidden" class="slug-id" value="">
                                <input type="hidden" class="slug-copy" value="0"> --}}

                                <div class="card card-primary card-outline card-outline-tabs">
                                    <div class="card-header p-0 border-bottom-0">
                                        <ul class="nav nav-tabs" id="custom-tabs-three-tab-lang" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="tabs-lang" data-toggle="pill"
                                                    href="#tabs-sluglang-vi" role="tab"
                                                    aria-controls="tabs-sluglang-vi" aria-selected="true">Tiếng
                                                    Việt</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="card-body">
                                        <div class="tab-content" id="custom-tabs-three-tabContent-lang">
                                            <div class="tab-pane fade show active" id="tabs-sluglang-vi"
                                                role="tabpanel" aria-labelledby="tabs-lang">
                                                <div class="form-gourp mb-0">
                                                    <label class="d-block">Đường dẫn mẫu (vi):<span
                                                            class="pl-2 font-weight-normal"
                                                            id="slugurlpreviewvi">https://nhadatminhphat.com.vn/<strong
                                                                class="text-info"
                                                                id="slugPreview"></strong></span></label>
                                                    <input type="text" class="form-control slug-input no-validate"
                                                        name="link" id="slugvi" placeholder="Đường dẫn (vi)"
                                                        value="{{ $product->link }}">
                                                    <input type="hidden" id="slug-defaultvi" value="">
                                                    <p class="alert-slugvi text-danger d-none mt-2 mb-0"
                                                        id="alert-slug-dangervi">
                                                        <i class="fas fa-exclamation-triangle mr-1"></i>
                                                        <span>Đường dẫn đã tồn tại. Đường dẫn truy cập mục này có thể bị
                                                            trùng lặp.</span>
                                                    </p>
                                                    <p class="alert-slugvi text-success d-none mt-2 mb-0"
                                                        id="alert-slug-successvi">
                                                        <i class="fas fa-check-circle mr-1"></i>
                                                        <span>Đường dẫn hợp lệ.</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card card-primary card-outline text-sm">
                            <div class="card-header">
                                <h3 class="card-title">Nội dung Sản Phẩm</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                            class="fas fa-minus"></i></button>
                                </div>
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
                                                        value="{{ old('tittle') ?? $product->tittle }}" required>

                                                </div>
                                                <div class="form-group">
                                                    <label for="motavi">Mô tả (vi):</label>
                                                    <textarea class="form-control for-seo form-control-ckeditor" name="describe" id="motavi" rows="5"
                                                        placeholder="Mô tả (vi)">{{ old('describe') ?? $product->describe }}</textarea>
                                                    <script>
                                                        CKEDITOR.replace('motavi', {
                                                            filebrowserUploadUrl: "{{ route('upload', ['_token' => csrf_token()]) }}",
                                                            filebrowserUploadMethod: 'form'
                                                        });
                                                    </script>
                                                    <script src="ckeditor/build/ckeditor.js"></script>
                                                    @error('describe')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="noidungvi">Nội dung (vi):</label>
                                                    <textarea class="form-control for-seo form-control-ckeditor" name="content" id="noidungvi" rows="5"
                                                        placeholder="Nội dung (vi)">{{ old('content') ?? $product->content }}</textarea>
                                                    <script>
                                                        CKEDITOR.replace('noidungvi', {
                                                            filebrowserUploadUrl: "{{ route('upload', ['_token' => csrf_token()]) }}",
                                                            filebrowserUploadMethod: 'form'
                                                        });
                                                    </script>
                                                    <script src="ckeditor/build/ckeditor.js"></script>
                                                    @error('content')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4">
                        <div class="card card-primary card-outline text-sm">
                            <div class="card-header">
                                <h3 class="card-title">Danh mục Sản Phẩm</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                            class="fas fa-minus"></i></button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group-category row">
                                    <div class="form-group col-xl-6 col-sm-4">
                                        <label class="d-block" for="id_list">Danh mục cấp 1:</label>
                                        <select id="id_list" name="level1_product_id" data-level="0"
                                            data-type="san-pham" data-table="#_product_cat" data-child="id_cat"
                                            class="form-control select2 select-category">
                                            <option value="0">Chọn danh mục</option>
                                            @foreach ($category_level1 as $item)
                                                <option value="{{ $item->id }}"
                                                    {{ $item->id == $product->level1_product_id ? 'selected' : '' }}>
                                                    {{ $item->tittle }}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                    <div class="form-group col-xl-6 col-sm-4">
                                        <label class="d-block" for="id_cat">Danh mục cấp 2:</label>
                                        <select id="id_cat" name="level2_product_id" data-level="1"
                                            data-type="san-pham" data-table="#_product_item" data-child="id_item"
                                            class="form-control select2 select-category">
                                            <option value="0">Chọn danh mục</option>
                                            @foreach ($category_level2 as $item)
                                                <option
                                                    value="{{ $item->id }}"{{ $item->id == $product->level2_product_id ? 'selected' : '' }}>
                                                    {{ $item->tittle }}</option>
                                            @endforeach
                                        </select>
                                    </div>



                                </div>
                            </div>
                        </div>

                        <div class="card card-primary card-outline text-sm">
                            <div class="card-header">
                                <h3 class="card-title">Hình ảnh Sản Phẩm</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                            class="fas fa-minus"></i></button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="photoUpload-zone" id="photoUploadZone">
                                    <div class="photoUpload-detail" id="photoUpload-preview"><img class="rounded"
                                            id="uploaded-image" src="{{ asset('products/' . $product->image) }}"
                                            alt="Alt Photo" /></div>
                                    <label class="photoUpload-file" id="photo-zone" for="file-zone">
                                        <input type="file" name="image" id="file-zone"
                                            onchange="previewImage(this)">
                                        <i class="fas fa-cloud-upload-alt"></i>
                                        <p class="photoUpload-drop">Kéo và thả hình vào đây</p>
                                        <p class="photoUpload-or">hoặc</p>
                                        <p class="photoUpload-choose btn btn-sm bg-gradient-success">Chọn hình</p>
                                    </label>
                                    <div class="photoUpload-dimension">Width: 600 px - Height: 577 px
                                        (.jpg|.gif|.png|.jpeg|.gif|.JPG|.PNG|.JPEG|.Png|.GIF)</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-primary card-outline text-sm">
                    <div class="card-header">
                        <h3 class="card-title">Thông tin Sản Phẩm</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                    class="fas fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="hienthi" class="d-inline-block align-middle mb-0 mr-2">Hiển thị:</label>
                            <div class="custom-control custom-checkbox d-inline-block align-middle">
                                <input type="checkbox" class="custom-control-input hienthi-checkbox" name="display"
                                    id="hienthi-checkbox"
                                    value="{{ old('display') ?? $product->display }}"{{ $product->display == 1 ? 'checked' : '' }}>
                                <label for="hienthi-checkbox" class="custom-control-label"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="stt" class="d-inline-block align-middle mb-0 mr-2">Số thứ tự:</label>
                            <input type="number" class="form-control form-control-mini d-inline-block align-middle"
                                min="0" name="number" id="stt" placeholder="Số thứ tự"
                                value="{{ $product->number }}">
                        </div>
                        <div class="row">
                            <div class="form-group col-md-4">
                                <label class="d-block" for="masp">Mã sản phẩm:</label>
                                <input type="text" class="form-control" name="product_code" id="masp"
                                    placeholder="Mã sản phẩm"
                                    value="{{ old('product_code') ?? $product->product_code }}">

                            </div>
                            <div class="form-group col-md-4">
                                <label class="d-block" for="gia">Giá bán:</label>
                                <div class="input-group">
                                    <input type="text" class="form-control format-price gia_ban" name="price"
                                        id="gia" placeholder="Giá bán"
                                        value="{{ old('price') ?? $product->price }}">
                                    <div class="input-group-append">
                                        <div class="input-group-text"><strong>VNĐ</strong></div>
                                    </div>

                                </div>

                            </div>
                            <div class="form-group col-md-4">
                                <label class="d-block" for="giamoi">Giá mới:</label>
                                <div class="input-group">
                                    <input type="text" class="form-control format-price gia_moi" name="new_price"
                                        id="giamoi" placeholder="Giá mới"
                                        value="{{ old('new_price') ?? $product->new_price }}">
                                    <div class="input-group-append">
                                        <div class="input-group-text"><strong>VNĐ</strong></div>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group col-md-4">
                                <label class="d-block" for="giakm">Chiết khấu:</label>
                                <div class="input-group">
                                    <input type="text" class="form-control gia_km" name="discount" id="giakm"
                                        placeholder="Chiết khấu" value="{{ old('discount') ?? $product->discount }}"
                                        maxlength="3">
                                    <div class="input-group-append">
                                        <div class="input-group-text"><strong>%</strong></div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-primary card-outline text-sm">
                    <div class="card-header">
                        <h3 class="card-title">Bộ sưu tập Sản Phẩm</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                    class="fas fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="filer-gallery" class="label-filer-gallery mb-3">Album hình:
                                (.jpg|.gif|.png|.jpeg|.gif|.JPG|.PNG|.JPEG|.Png|.GIF)</label>
                            <div class="jFiler jFiler-theme-dragdropbox">

                                <input type="file" name="files[]" id="filer-gallery" multiple="multiple"
                                    data-params="Y29tPXByb2R1Y3QmYWN0PWVkaXQmdHlwZT1zYW4tcGhhbSZwPTEmaWRfbGlzdD03JmlkPTI4MQ=="
                                    data-hash="krTZAlnNWN" style="display: none;">

                                @foreach ($product->gallery as $gal)
                                    <input type="hidden" name="gallery[]"
                                        value="{{ asset('products/' . $gal->image) }}">
                                @endforeach
                                <div class="jFiler-input-dragDrop">
                                    <div class="jFiler-input-inner">
                                        <div class="jFiler-input-icon">
                                            <i class="icon-jfi-cloud-up-o"></i>
                                        </div>
                                        <div class="jFiler-input-text">
                                            <h3 onclick="document.getElementById('filer-gallery').click();">Kéo và thả
                                                hình vào đây</h3> <!-- Kích hoạt sự kiện click cho input file -->
                                            <span style="display:inline-block; margin: 15px 0">hoặc</span>
                                        </div>
                                        <a class="jFiler-input-choose-btn blue"
                                            onclick="document.getElementById('filer-gallery').click();">Chọn hình</a>
                                        <!-- Kích hoạt sự kiện click cho input file -->
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" class="col-filer"
                                value="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-6">
                            <input type="hidden" class="act-filer" value="man">
                            <input type="hidden" class="folder-filer" value="product">
                        </div>
                        <div class="form-group form-group-gallery">
                            <label class="label-filer">Album hiện tại:</label>
                            <div class="action-filer mb-3">
                                <a class="btn btn-sm bg-gradient-primary text-white check-all-filer mr-1"><i
                                        class="far fa-square mr-2"></i>Chọn tất cả</a>
                                <button type="submit"
                                    class="btn btn-sm bg-gradient-success text-white sort-filer mr-1"><i
                                        class="fas fa-random mr-2"></i>Sắp xếp</button>
                                <a class="btn btn-sm bg-gradient-danger text-white delete-all-filer"><i
                                        class="far fa-trash-alt mr-2"></i>Xóa tất cả</a>
                            </div>
                            <div
                                class="alert my-alert alert-sort-filer alert-info text-sm text-white bg-gradient-info">
                                <i class="fas fa-info-circle mr-2"></i>Có thể chọn nhiều hình để di chuyển
                            </div>
                            <div class="jFiler-items my-jFiler-items jFiler-row">
                                <ul class="jFiler-items-list jFiler-items-grid row scroll-bar" id="jFilerSortable">
                                    @foreach ($product->gallery as $gal)
                                        <li class="jFiler-item my-jFiler-item my-jFiler-item-1608 col-xl-2 col-lg-3 col-md-3 col-sm-4 col-6"
                                            data-id="1608">
                                            <div class="jFiler-item-container">
                                                <div class="jFiler-item-inner">
                                                    <div class="jFiler-item-thumb">
                                                        <div class="jFiler-item-thumb-image">
                                                            <img src="{{ asset('products/' . $gal->image) }}"
                                                                alt="">
                                                            <i class="fas fa-arrows-alt"></i>
                                                        </div>
                                                    </div>
                                                    <div class="jFiler-item-assets jFiler-row">
                                                        <ul
                                                            class="list-inline pull-right d-flex align-items-center justify-content-between">
                                                            <li class="ml-1">
                                                                <a class="icon-jfi-trash jFiler-item-trash-action my-jFiler-item-trash"
                                                                    data-id="{{ $gal->id }}"
                                                                    data-folder="product"></a>
                                                            </li>
                                                            <li class="mr-1">
                                                                <div
                                                                    class="custom-control custom-checkbox d-inline-block align-middle text-md">
                                                                    <input type="checkbox"
                                                                        class="custom-control-input filer-checkbox"
                                                                        id="filer-checkbox-{{ $gal->id }}"
                                                                        value="{{ $gal->id }}">
                                                                    <label for="filer-checkbox-{{ $gal->id }}"
                                                                        class="custom-control-label font-weight-normal">Chọn</label>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <input type="number"
                                                        class="form-control form-control-sm my-jFiler-item-info rounded mb-1"
                                                        value="1" placeholder="Số thứ tự" data-info="stt"
                                                        data-id="{{ $gal->id }}" />
                                                    <input type="text"
                                                        class="form-control form-control-sm my-jFiler-item-info rounded"
                                                        value="" placeholder="Tiêu đề" data-info="tieude"
                                                        data-id="{{ $gal->id }}" />
                                                </div>
                                            </div>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-primary card-outline text-sm">
                    <div class="card-header">
                        <h3 class="card-title">Nội dung SEO</h3>
                        <a class="btn btn-sm bg-gradient-success d-inline-block text-white float-right create-seo"
                            title="Tạo SEO" onclick="generateSEO()">Tạo SEO</a>
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
                                                    <strong class="count-seo-tittle"><span>0</span>/70 ký tự</strong>
                                                </div>
                                                <input type="text" class="form-control check-seo title-seo"
                                                    name="seo_tittle" id="titlevi" placeholder="SEO Title (vi)"
                                                    value="{{ old('seo_tittle') ?? $product->seo->seo_tittle }}"
                                                    data-max-characters="70">
                                            </div>
                                            <div class="form-group ">
                                                <div class="label-seo">
                                                    <label for="keywordsvi">SEO Keywords (vi):</label>
                                                    <strong class="count-seo-keywords"><span>0</span>/70 ký tự</strong>
                                                </div>
                                                <input type="text" class="form-control check-seo keywords-seo"
                                                    name="seo_keyword" id="keywordsvi"
                                                    placeholder="SEO Keywords (vi)"
                                                    value="{{ old('seo_keyword') ?? $product->seo->seo_keyword }}"
                                                    data-max-characters="70">
                                            </div>
                                            <div class="form-group ">
                                                <div class="label-seo">
                                                    <label for="descriptionvi">SEO Description (vi):</label>
                                                    <strong class="count-seo-description"><span>0</span>/160 ký
                                                        tự</strong>
                                                </div>
                                                <textarea class="form-control check-seo description-seo" name="seo_description" id="descriptionvi" rows="5"
                                                    placeholder="SEO Description (vi)">{{ old('seo_description') ?? $product->seo->seo_description }}</textarea>
                                            </div>

                                            <!-- SEO preview -->
                                            <div
                                                class="form-group form-group-seo-preview callout callout-warning mb-0 d-none">
                                                <label class="label-seo-preview"><i class="fas fa-info mr-2"></i>Khi
                                                    lên top, page này sẽ hiển thị theo dạng mẫu như sau:</label>
                                                <div class="seo-preview">
                                                    <p class="slug-seo-preview" id="seourlpreviewvi"
                                                        data-seourlstatic="1">
                                                        https://nhadatminhphat.com.vn/<strong></strong>
                                                    </p>
                                                    <p class="title-seo-preview text-split" id="title-seo-previewvi">
                                                        Title</p>
                                                    <p class="description-seo-preview text-split"
                                                        id="description-seo-previewvi">Description</p>
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
                    <button type="submit" class="btn btn-sm bg-gradient-success submit-check" name="save-here"><i
                            class="far fa-save mr-2"></i>Lưu tại trang</button>
                    <button type="reset" class="btn btn-sm bg-gradient-secondary"><i
                            class="fas fa-redo mr-2"></i>Làm lại</button>
                    <a class="btn btn-sm bg-gradient-danger" href="/product" title="Thoát"><i
                            class="fas fa-sign-out-alt mr-2"></i>Thoát</a>
                    <input type="hidden" name="id" value="">
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
    {{-- Hình ảnh --}}
    <script>
        document.getElementById('file-zone').addEventListener('change', function(e) {
            var fileInput = e.target;
            var file = fileInput.files[0];

            if (file) {
                var reader = new FileReader();

                reader.onload = function(e) {
                    document.getElementById('uploaded-image').src = e.target.result;
                }

                reader.readAsDataURL(file);
            }
        });
    </script>
    {{-- Hình ảnh album --}}
    <script>
        document.getElementById('filer-gallery').addEventListener('change', function(event) {
            var fileInput = event.target;
            var files = fileInput.files;
            var galleryInputs = document.getElementById('gallery-inputs');
            if (galleryInputs !== null) {
                // Xóa tất cả các input cũ trước khi thêm các input mới
                galleryInputs.innerHTML = '';

                // Lặp qua mỗi file và tạo input mới cho từng file
                for (var i = 0; i < files.length; i++) {
                    var input = document.createElement('input');
                    input.type = 'hidden';
                    input.name = 'gallery[]';
                    input.value = URL.createObjectURL(files[i]);

                    // Kiểm tra xem phần tử galleryInputs đã tồn tại trước khi thêm input mới vào
                    if (galleryInputs !== null) {
                        galleryInputs.appendChild(input);
                    }
                }
            }
            if (files) {
                // Lặp qua từng tệp đã chọn
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        // Tạo một thẻ <li> mới
                        var newLi = document.createElement('li');
                        newLi.className = 'jFiler-item my-jFiler-item'; // Thêm class cho li mới

                        // Tạo nội dung cho thẻ <li> mới
                        newLi.innerHTML = `
                        <div class="jFiler-item-container">
                            <div class="jFiler-item-inner">
                                <div class="jFiler-item-thumb">
                                    <div class="jFiler-item-thumb-image">
                                        <img src="${e.target.result}" alt="">
                                        <i class="fas fa-arrows-alt"></i>
                                    </div>
                                </div>
                                <div class="jFiler-item-assets jFiler-row">
                                    <ul class="list-inline pull-right d-flex align-items-center justify-content-between">
                                        <li class="ml-1">
                                            <a class="icon-jfi-trash jFiler-item-trash-action my-jFiler-item-trash" data-id="${file.name}" data-folder="product"></a>
                                        </li>
                                        <li class="mr-1">
                                            <div class="custom-control custom-checkbox d-inline-block align-middle text-md">
                                                <input type="checkbox" class="custom-control-input filer-checkbox" id="filer-checkbox-${file.name}" value="${file.name}">
                                                <label for="filer-checkbox-${file.name}" class="custom-control-label font-weight-normal">Chọn</label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <input type="number" class="form-control form-control-sm my-jFiler-item-info rounded mb-1" value="1" placeholder="Số thứ tự" data-info="stt" data-id="${file.name}"/>
                                <input type="text" class="form-control form-control-sm my-jFiler-item-info rounded" value="" placeholder="Tiêu đề" data-info="tieude" data-id="${file.name}"/>
                            </div>
                        </div>
                    `;

                        // Tìm gallery container và thêm li mới vào đó
                        var galleryContainer = document.getElementById('jFilerSortable');
                        galleryContainer.appendChild(newLi);
                    };

                    // Đọc tệp như dữ liệu URL
                    reader.readAsDataURL(file);
                }
            }
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

    {{-- Nối chuỗi --}}
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var slugInput = document.getElementById('slugvi');
            var slugPreview = document.getElementById('slugPreview');

            // Xác định khi người dùng nhập liệu
            slugInput.addEventListener('input', function() {
                var inputValue = slugInput.value;
                // Nối thêm đoạn "https://nhadatminhphat.com.vn/" vào giá trị nhập vào
                var fullUrl = 'https://nhadatminhphat.com.vn/' + inputValue;
                // Hiển thị giá trị đã nối trong phần xem trước
                slugPreview.textContent = inputValue;
            });
        });
    </script>

    {{-- kéo thả --}}
    <script>
        function previewImage(input) {
            var preview = document.getElementById('uploaded-image');
            var file = input.files[0];
            var reader = new FileReader();

            reader.onload = function(e) {
                preview.src = e.target.result;
            };

            reader.readAsDataURL(file);
        }

        var photoUploadZone = document.getElementById('photoUploadZone');

        photoUploadZone.addEventListener('dragover', function(e) {
            e.preventDefault();
            photoUploadZone.classList.add('photoUpload-zone-dragover');
        });

        photoUploadZone.addEventListener('dragleave', function(e) {
            e.preventDefault();
            photoUploadZone.classList.remove('photoUpload-zone-dragover');
        });

        photoUploadZone.addEventListener('drop', function(e) {
            e.preventDefault();
            photoUploadZone.classList.remove('photoUpload-zone-dragover');

            var fileInput = document.getElementById('file-zone');
            var files = e.dataTransfer.files;

            fileInput.files = files;

            previewImage(fileInput);
        });
    </script>

    {{-- tạo link --}}
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Lắng nghe sự kiện khi người dùng nhập liệu vào trường tiêu đề
            document.getElementById('tenvi').addEventListener('input', function() {
                // Lấy giá trị của trường tiêu đề
                var titleValue = this.value;

                // Chuyển đổi tất cả các từ trong tiêu đề thành chữ thường và bỏ dấu
                var slug = convertToSlug(titleValue);

                // Cập nhật giá trị của trường đường dẫn
                document.getElementById('slugvi').value = slug;

                // Cập nhật giá trị của thẻ strong có id là slugPreview
                document.getElementById('slugPreview').innerText = slug;

                // Cập nhật xem đường dẫn có hợp lệ hay không
                checkSlugValidity(slug);
            });

            // Hàm chuyển đổi từ có dấu thành không dấu và thành chữ thường
            function convertToSlug(text) {
                return text.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '-')
                    .replace(/[^a-z0-9-]/g, '');
            }

            // Hàm kiểm tra tính hợp lệ của đường dẫn
            function checkSlugValidity(slug) {
                // Gửi yêu cầu kiểm tra đường dẫn đã tồn tại hay chưa (có thể sử dụng Ajax để kiểm tra phía server)
                // Ở đây tôi chỉ mô phỏng việc kiểm tra đường dẫn đã tồn tại bằng cách kiểm tra độ dài của đường dẫn
                var isSlugValid = slug.length > 0;

                // Hiển thị thông báo tương ứng
                if (isSlugValid) {
                    document.getElementById('alert-slug-successvi').classList.remove('d-none');
                    document.getElementById('alert-slug-dangervi').classList.add('d-none');
                } else {
                    document.getElementById('alert-slug-successvi').classList.add('d-none');
                    document.getElementById('alert-slug-dangervi').classList.remove('d-none');
                }
            }
        });
    </script>
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
                var describeVi = document.getElementById('motavi').value;

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
