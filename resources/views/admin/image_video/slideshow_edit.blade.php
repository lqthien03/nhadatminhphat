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
    <script src="{{ asset('assets/ckeditor/ckeditor.js') }}"></script>
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
                        <a class="nav-link active" href="#" title="Quản lý hình ảnh - video">
                            <i class="nav-icon text-sm fas fa-photo-video"></i>
                            <p>
                                Quản lý hình ảnh - video
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview" style="display: block">

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
                                <a class="nav-link active" href="/image-video/slideshow" title="Slideshow"><i
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
                        <li class="breadcrumb-item"><a href="/image-video/slideshow" title="Slideshow">Quản lý
                                Slideshow</a></li>
                        <li class="breadcrumb-item active">Cập nhật Slideshow</li>
                    </ol>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <form method="post" action="{{ route('update.slideshow', $slideshow) }}" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="card-footer text-sm sticky-top">
                    <button type="submit" class="btn btn-sm bg-gradient-primary"><i
                            class="far fa-save mr-2"></i>Lưu</button>
                    <button type="reset" class="btn btn-sm bg-gradient-secondary"><i
                            class="fas fa-redo mr-2"></i>Làm lại</button>
                    <a class="btn btn-sm bg-gradient-danger" href="/image-video/slideshow" title="Thoát"><i
                            class="fas fa-sign-out-alt mr-2"></i>Thoát</a>
                </div>
                <div class="card card-primary card-outline text-sm">
                    <div class="card-header">
                        <h3 class="card-title">Chi tiết Slideshow</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label class="change-photo" for="file">
                                <p>Upload hình ảnh:</p>
                                <div class="rounded">
                                    <img class="rounded img-upload" id="uploaded-image"
                                        src="{{ asset('products/' . $slideshow->image) }}" alt="Alt Photo" />
                                    <strong>
                                        <b class="text-sm text-split"></b>
                                        <span class="btn btn-sm bg-gradient-success"><i
                                                class="fas fa-camera mr-2"></i>Chọn hình</span>
                                    </strong>
                                </div>
                            </label>
                            <strong class="d-block mt-2 mb-2 text-sm">Width: 1366 px - Height: 500 px
                                (.jpg|.gif|.png|.jpeg|.gif|.JPG|.PNG|.JPEG|.Png|.GIF)</strong>
                            <div class="custom-file my-custom-file d-none">
                                <input type="file" class="custom-file-input" name="image" id="file">
                                <label class="custom-file-label" for="file">Chọn file</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="link">Link:</label>
                            <input type="text" class="form-control" name="link" id="link"
                                placeholder="Link" value="{{ old('link') ?? $slideshow->link }}">
                        </div>
                        <div class="form-group">
                            <label for="hienthi" class="d-inline-block align-middle mb-0 mr-2">Hiển thị:</label>
                            <div class="custom-control custom-checkbox d-inline-block align-middle">
                                <input type="checkbox" class="custom-control-input hienthi-checkbox" name="display"
                                    id="hienthi-checkbox"
                                    value="{{ old('display') ?? $slideshow->display }}"{{ $slideshow->display == 1 ? 'checked' : '' }}>
                                @if (!$slideshow)
                                    <input type="hidden" name="display" value="0">
                                @endif
                                <label for="hienthi-checkbox" class="custom-control-label"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="stt" class="d-inline-block align-middle mb-0 mr-2">Số thứ tự:</label>
                            <input type="number" class="form-control form-control-mini d-inline-block align-middle"
                                min="0" name="number" id="stt" placeholder="Số thứ tự"
                                value="{{ old('number') ?? $slideshow->number }}">
                        </div>
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
                            <div class="card-body">
                                <div class="tab-content" id="custom-tabs-three-tabContent-lang">
                                    <div class="tab-pane fade show active" id="tabs-lang-vi" role="tabpanel"
                                        aria-labelledby="tabs-lang">
                                        <div class="form-group">
                                            <label for="tenvi">Tiêu đề (vi):</label>
                                            <input type="text" class="form-control" name="tittle" id="tenvi"
                                                placeholder="Tiêu đề (vi)"
                                                value="{{ old('tittle') ?? $slideshow->tittle }}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-sm">
                    <button type="submit" class="btn btn-sm bg-gradient-primary"><i
                            class="far fa-save mr-2"></i>Lưu</button>
                    <button type="reset" class="btn btn-sm bg-gradient-secondary"><i
                            class="fas fa-redo mr-2"></i>Làm lại</button>
                    <a class="btn btn-sm bg-gradient-danger" href="/image-video/slideshow" title="Thoát"><i
                            class="fas fa-sign-out-alt mr-2"></i>Thoát</a>
                    <input type="hidden" name="id" value="81">
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

                // Gán giá trị vào form SEO
                document.getElementById('titlevi').value = titleVi;
                document.getElementById('keywordsvi').value = titleVi;
                document.getElementById('descriptionvi').value = describeVi;

            }
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
</body>

</html>
