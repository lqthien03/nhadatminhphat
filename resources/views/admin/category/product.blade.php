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
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
                        <li class="breadcrumb-item"><a href="/admin" title="Bảng điều khiển">Bảng điều khiển</a>
                        </li>
                        <li class="breadcrumb-item active">Quản lý Nhà đất</li>
                    </ol>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="card-footer text-sm sticky-top">
                <a class="btn btn-sm bg-gradient-primary text-white" href="/product/create" title="Thêm mới"><i
                        class="fas fa-plus mr-2"></i>Thêm mới</a>
                <a class="btn btn-sm bg-gradient-danger text-white" id="delete-all" data-url="#"
                    title="Xóa tất cả"><i class="far fa-trash-alt mr-2"></i>Xóa tất cả</a>
                <div class="form-inline form-search d-inline-block align-middle ml-3">
                    <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar text-sm" type="search" id="keyword"
                            placeholder="Tìm kiếm" aria-label="Tìm kiếm" value="" name="search">
                        <div class="input-group-append bg-primary rounded-right">
                            <button class="btn btn-navbar text-white" type="button" onclick="searchProducts()"
                                id="searchBtn">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card-footer form-group-category text-sm bg-light row">
                <div class="form-group col-xl-2 col-lg-3 col-md-4 col-sm-4 mb-2">
                    <select id="id_list" name="id_list" onchange="onchange_category($(this))"
                        class="form-control filer-category select2">
                        <option value="0">Chọn danh mục</option>
                        @foreach ($category_level1 as $item)
                            <option value="{{ $item->id }}">{{ $item->tittle }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-xl-2 col-lg-3 col-md-4 col-sm-4 mb-2">
                    <select id="id_cat" name="id_cat" onchange="onchange_category($(this))"
                        class="form-control filer-category select2">
                        <option value="0">Chọn danh mục</option>
                        @foreach ($category_level2 as $item)
                            <option value="{{ $item->id }}">{{ $item->tittle }}</option>
                        @endforeach
                    </select>
                </div>
            </div>


            <div class="card card-primary card-outline text-sm mb-0">
                <div class="card-header">
                    <h3 class="card-title">Danh sách Nhà đất</h3>
                </div>
                <div class="card-body table-responsive p-0">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="align-middle" width="5%">
                                    <div class="custom-control custom-checkbox my-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="selectall-checkbox">
                                        <label for="selectall-checkbox" class="custom-control-label"></label>
                                    </div>
                                </th>
                                <th class="align-middle text-center" width="10%">STT</th>
                                <th class="align-middle">Hình</th>
                                <th class="align-middle" style="width:30%">Tiêu đề</th>
                                <th class="align-middle">Gallery</th>
                                <th class="align-middle text-center">Nổi bật</th>
                                <th class="align-middle text-center">New</th>
                                <th class="align-middle text-center">Hiển thị</th>
                                <th class="align-middle text-center">Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($product as $item)
                                <tr>
                                    <td class="align-middle">
                                        <div class="custom-control custom-checkbox my-checkbox">
                                            <input type="checkbox" class="custom-control-input select-checkbox"
                                                id="select-checkbox-347" value="{{ $item->id }}">
                                            <label for="select-checkbox-347" class="custom-control-label"></label>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <input type="number" class="form-control form-control-mini m-auto update-stt"
                                            min="0" value="{{ $item->number }}"
                                            data-id="{{ $item->id }}" data-table="items">
                                    </td>
                                    <td class="align-middle">
                                        <a href="/product/edit/{{ $item->id }}" title="{{ $item->tittle }}"><img
                                                class="rounded img-preview"
                                                src="{{ URL::asset('products/' . $item->image) }}"
                                                alt=""></a>
                                    </td>
                                    <form action="{{ route('delete.product', ['id' => $item->id]) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <td class="align-middle">
                                            <a class="text-dark" href="/product/edit/{{ $item->id }}"
                                                title="{{ $item->tittle }}">{{ $item->tittle }}</a>
                                            <div class="tool-action mt-2 w-clear">
                                                <a class="text-primary mr-3" href="/san-pham/{{ $item->link }}"
                                                    target="_blank" title="{{ $item->tittle }}"><i
                                                        class="far fa-eye mr-1"></i>View</a>
                                                <a class="text-info mr-3" href="/product/edit/{{ $item->id }}"
                                                    title="{{ $item->tittle }}"><i
                                                        class="far fa-edit mr-1"></i>Edit</a>
                                                <div class="dropdown">
                                                    <a id="dropdownCopy" href="#" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false"
                                                        class="nav-link dropdown-toggle text-success p-0 pr-3"><i
                                                            class="far fa-clone mr-1"></i>Copy</a>
                                                    <ul aria-labelledby="dropdownCopy"
                                                        class="dropdown-menu border-0 shadow">
                                                        <li><a href="#" class="dropdown-item copy-now"
                                                                data-id="347" data-table="product"
                                                                data-copyimg=""><i
                                                                    class="far fa-caret-square-right text-secondary mr-2"></i>Sao
                                                                chép ngay</a></li>
                                                        <li><a href="/product/edit/{{ $item->id }}"
                                                                class="dropdown-item"><i
                                                                    class="far fa-caret-square-right text-secondary mr-2"></i>Chỉnh
                                                                sửa thông tin</a></li>
                                                    </ul>
                                                </div>
                                                <button
                                                    type="submit"style="background: none; border: none; cursor: pointer;">
                                                    <a class="text-danger" id="delete-item" data-url=""
                                                        title="{{ $item->tittle }}"><i
                                                            class="far fa-trash-alt mr-1"></i>Delete</a>
                                                </button>

                                            </div>
                                        </td>
                                    </form>

                                    <td class="align-middle">
                                        <div class="dropdown">
                                            <button type="button"
                                                class="btn btn-sm bg-gradient-success dropdown-toggle"
                                                id="dropdown-gallery" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">Thêm</button>
                                            <div class="dropdown-menu" aria-labelledby="dropdown-gallery">
                                                <a class="dropdown-item text-dark"
                                                    href="/product/gallery/{{ $item->id }}" title="Hình ảnh"><i
                                                        class="far fa-caret-square-right text-secondary mr-2"></i>Hình
                                                    ảnh</a>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle text-center">
                                        <div class="custom-control custom-checkbox my-checkbox">
                                            <input type="checkbox" class="custom-control-input show-checkbox"
                                                id="show-checkbox-noibat-{{ $item->id }}" data-table=""
                                                data-id="{{ $item->id }}"
                                                data-loai="outstand"{{ $item->outstand == 1 ? 'checked' : '' }}
                                                onchange="updateDisplayOutstand(this)">
                                            <label for="show-checkbox-noibat-{{ $item->id }}"
                                                class="custom-control-label"></label>
                                        </div>
                                    </td>
                                    <td class="align-middle text-center">
                                        <div class="custom-control custom-checkbox my-checkbox">
                                            <input type="checkbox" class="custom-control-input show-checkbox"
                                                id="show-checkbox-moi-{{ $item->id }}" data-table=""
                                                data-id="{{ $item->id }}" data-loai="new"
                                                {{ $item->new == 1 ? 'checked' : '' }}
                                                onchange="updateDisplayNew(this)">
                                            <label for="show-checkbox-moi-{{ $item->id }}"
                                                class="custom-control-label"></label>
                                        </div>
                                    </td>
                                    <td class="align-middle text-center">
                                        <div class="custom-control custom-checkbox my-checkbox">
                                            <input type="checkbox" class="custom-control-input show-checkbox"
                                                id="show-checkbox-{{ $item->id }}" data-table=""
                                                data-id="{{ $item->id }}" data-loai="display"
                                                {{ $item->display == 1 ? 'checked' : '' }}
                                                onchange="updateDisplayStatus(this)">
                                            <label for="show-checkbox-{{ $item->id }}"
                                                class="custom-control-label"></label>
                                        </div>
                                    </td>
                                    <form action="{{ route('delete.product', ['id' => $item->id]) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <td class="align-middle text-center text-md text-nowrap">
                                            <div class="dropdown d-inline-block align-middle">
                                                <a id="dropdownCopy" href="#" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false"
                                                    class="nav-link dropdown-toggle text-success p-0 pr-2"><i
                                                        class="far fa-clone"></i></a>
                                                <ul aria-labelledby="dropdownCopy"
                                                    class="dropdown-menu border-0 shadow">
                                                    <li><a href="" class="dropdown-item copy-now"
                                                            data-id="347" data-table="product"><i
                                                                class="far fa-caret-square-right text-secondary mr-2"></i>Sao
                                                            chép ngay</a></li>
                                                    <li><a href="/real_estate/product/edit/{{ $item->id }}"
                                                            class="dropdown-item"><i
                                                                class="far fa-caret-square-right text-secondary mr-2"></i>Chỉnh
                                                            sửa thông tin</a></li>
                                                </ul>
                                            </div>
                                            <a class="text-primary mr-2" href="/product/edit/{{ $item->id }}"
                                                title="Chỉnh sửa"><i class="fas fa-edit"></i></a>
                                            <button
                                                type="submit"style="background: none; border: none; cursor: pointer;">
                                                <a class="text-danger" id="delete-item" data-url="#"
                                                    title="Xóa"><i class="fas fa-trash-alt"></i></a>
                                            </button>
                                        </td>
                                    </form>

                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer text-sm pb-0">
                <ul class='pagination justify-content-center mb-0'>
                    {!! $product->links() !!}
                </ul>

            </div>
            <div class="card-footer text-sm">
                <a class="btn btn-sm bg-gradient-primary text-white" href="/product/create" title="Thêm mới"><i
                        class="fas fa-plus mr-2"></i>Thêm mới</a>
                <a class="btn btn-sm bg-gradient-danger text-white" id="delete-all" data-url="#"
                    title="Xóa tất cả"><i class="far fa-trash-alt mr-2"></i>Xóa tất cả</a>
            </div>
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

    <script>
        function searchProducts() {
            // Lấy giá trị từ ô nhập
            var keyword = document.getElementById('keyword').value.toLowerCase();

            // Lấy danh sách các dòng trong bảng
            var rows = document.querySelectorAll('.table tbody tr');

            // Lặp qua từng dòng để kiểm tra và ẩn/hiển thị
            rows.forEach(function(row) {
                // Lấy nội dung cần tìm kiếm từ cột Tiêu đề
                var title = row.querySelector('.align-middle a.text-dark').innerText.toLowerCase();

                // Ẩn/hiển thị dựa trên việc có tìm kiếm được hay không
                if (title.includes(keyword)) {
                    row.style.display = 'table-row';
                } else {
                    row.style.display = 'none';
                }
            });
        }
    </script>
    <script>
        function updateDisplayStatus(checkbox) {
            var categoryId = checkbox.getAttribute('data-id');
            var isChecked = checkbox.checked;

            // Gửi yêu cầu Ajax để cập nhật trạng thái vào cơ sở dữ liệu
            $.ajax({
                url: '/update-display-status-1/' + categoryId,
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    display: isChecked ? 1 : 0
                },
                success: function(response) {
                    console.log(response);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
    {{-- chọn tất cả --}}
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Lấy checkbox "Chọn tất cả" và tất cả các checkbox cá nhân
            const selectAllCheckbox = document.getElementById("selectall-checkbox");
            const individualCheckboxes = document.querySelectorAll(".select-checkbox");

            // Thêm người nghe sự kiện cho checkbox "Chọn tất cả"
            selectAllCheckbox.addEventListener("change", function() {
                // Đặt trạng thái của tất cả các checkbox cá nhân dựa trên trạng thái của checkbox "Chọn tất cả"
                individualCheckboxes.forEach(function(checkbox) {
                    checkbox.checked = selectAllCheckbox.checked;
                });
            });
        });
    </script>
    {{-- số thứ tự --}}
    <script>
        $('.update-stt').change(function() {
            var item_id = $(this).data('id');
            var new_number = $(this).val();

            $.ajax({
                type: 'POST',
                url: '/product', // Thay đổi thành URL phù hợp với route của bạn
                data: {
                    '_token': '{{ csrf_token() }}',
                    'item_id': item_id,
                    'new_number': new_number
                },
                success: function(response) {
                    if (response.success) {
                        console.log('Dữ liệu đã được cập nhật thành công!');
                    } else {
                        console.log('Có lỗi xảy ra khi cập nhật dữ liệu!');
                    }
                },
                error: function(xhr, status, error) {
                    console.error('Lỗi: ' + error);
                }
            });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Lắng nghe sự kiện thay đổi trong thẻ select
            document.getElementById('id_list').addEventListener('change', function() {
                const selectedCategoryId = this.value; // Lấy giá trị của danh mục đã chọn

                // Chuyển hướng đến URL mới với tham số level1_product_id
                window.location.href = "{{ route('show.product') }}?level1_product_id=" +
                    selectedCategoryId;
            });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Lắng nghe sự kiện thay đổi trong thẻ select
            document.getElementById('id_cat').addEventListener('change', function() {
                const selectedCategoryId = this.value; // Lấy giá trị của danh mục đã chọn

                // Chuyển hướng đến URL mới với tham số level1_product_id
                window.location.href = "{{ route('show.product') }}?level2_product_id=" +
                    selectedCategoryId;
            });
        });
    </script>
    <script>
        function updateDisplayOutstand(checkbox) {
            var categoryId = checkbox.getAttribute('data-id');
            var isChecked = checkbox.checked;

            // Gửi yêu cầu Ajax để cập nhật trạng thái vào cơ sở dữ liệu
            $.ajax({
                url: '/update-display-outstand-product/' + categoryId,
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    outstand: isChecked ? 1 : 0
                },
                success: function(response) {
                    console.log(response);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
    <script>
        function updateDisplayNew(checkbox) {
            var categoryId = checkbox.getAttribute('data-id');
            var isChecked = checkbox.checked;

            // Gửi yêu cầu Ajax để cập nhật trạng thái vào cơ sở dữ liệu
            $.ajax({
                url: '/update-display-new-product/' + categoryId,
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    new: isChecked ? 1 : 0
                },
                success: function(response) {
                    console.log(response);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
    <script>
        function updateDisplayStatus(checkbox) {
            var categoryId = checkbox.getAttribute('data-id');
            var isChecked = checkbox.checked;

            // Gửi yêu cầu Ajax để cập nhật trạng thái vào cơ sở dữ liệu
            $.ajax({
                url: '/update-display-status-product/' + categoryId,
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    display: isChecked ? 1 : 0
                },
                success: function(response) {
                    console.log(response);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
</body>

</html>
