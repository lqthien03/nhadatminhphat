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
                        <a class="nav-link active" href="#" title="Quản lý nhận tin">
                            <i class="nav-icon text-sm fas fa-envelope"></i>
                            <p>
                                Quản lý nhận tin
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview" style="display: block">
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
                        <li class="breadcrumb-item active">Quản lý nhận tin</li>
                    </ol>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="card-footer text-sm sticky-top">
                <a class="btn btn-sm bg-gradient-success text-white" id="send-email" title="Gửi email"><i
                        class="fas fa-paper-plane mr-2"></i>Gửi email</a>
                <a class="btn btn-sm bg-gradient-primary text-white" href="" title="Thêm mới"><i
                        class="fas fa-plus mr-2"></i>Thêm mới</a>
                <a class="btn btn-sm bg-gradient-danger text-white" id="delete-all" data-url=""
                    title="Xóa tất cả"><i class="far fa-trash-alt mr-2"></i>Xóa tất cả</a>
                <div class="form-inline form-search d-inline-block align-middle ml-3">
                    <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar text-sm" type="search" id="keyword"
                            placeholder="Tìm kiếm" aria-label="Tìm kiếm" value=""
                            onkeypress="doEnter(event,'keyword','index.php?com=newsletter&act=man&type=dangkynhantin&p=1')">
                        <div class="input-group-append bg-primary rounded-right">
                            <button class="btn btn-navbar text-white" type="button"
                                onclick="onSearch('keyword','index.php?com=newsletter&act=man&type=dangkynhantin&p=1')">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card card-primary card-outline text-sm mb-0">
                <div class="card-header">
                    <h3 class="card-title">Danh sách Đăng ký tư vấn</h3>
                    <p class="d-block text-secondary w-100 float-left mb-0 mt-1">Chọn email sau đó kéo xuống dưới cùng
                        danh sách này để có thể thiết lập nội dung email muốn gửi đi.</p>
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
                                <th class="align-middle">Họ tên</th>
                                <th class="align-middle">Điện thoại</th>
                                <th class="align-middle">Email</th>
                                <th class="align-middle">Ngày tạo</th>
                                <th class="align-middle">Tình trạng</th>
                                <th class="align-middle text-center">Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($mail as $item)
                                <tr>
                                    <td class="align-middle">
                                        <div class="custom-control custom-checkbox my-checkbox">
                                            <input type="checkbox" class="custom-control-input select-checkbox"
                                                id="select-checkbox-326" value="{{ $item->id }}">
                                            <label for="select-checkbox-326" class="custom-control-label"></label>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <input type="number" class="form-control form-control-mini m-auto update-stt"
                                            min="0" value="{{ $item->number }}"
                                            data-id="{{ $item->id }}" data-table="items">
                                    </td>
                                    <td class="align-middle">
                                        <a class="text-dark"
                                            href="/receive-news/contact-letter/edit/{{ $item->id }}"
                                            title="ok">{{ $item->name }}</a>
                                    </td>
                                    <td class="align-middle">
                                        <a class="text-dark"
                                            href="/receive-news/contact-letter/edit/{{ $item->id }}"
                                            title="09">{{ $item->phone }}</a>
                                    </td>
                                    <td class="align-middle">
                                        <a class="text-dark"
                                            href="/receive-news/contact-letter/edit/{{ $item->id }}"
                                            title="{{ $item->email }}">{{ $item->email }}</a>
                                    </td>
                                    <td class="align-middle">
                                        <a class="text-dark"
                                            href="/receive-news/contact-letter/edit/{{ $item->id }}"
                                            title="{{ $item->email }}">{{ $item->created_at }}</a>
                                    </td>
                                    <td class="align-middle text-center">

                                        @if ($item->status == 1)
                                            {{ 'Đã xem' }}
                                        @elseif($item->status == 0)
                                            {{ 'Chưa xem' }}
                                        @else
                                            {{ 'Đã liên hệ' }}
                                        @endif
                                    </td>
                                    <form action="{{ route('delete.mail.contact', ['id' => $item->id]) }}"
                                        method="post">
                                        @csrf
                                        @method('DELETE')
                                        <td class="align-middle text-center text-md text-nowrap">
                                            <a class="text-primary mr-2"
                                                href="/receive-news/contact-letter/edit/{{ $item->id }}"
                                                title="Chỉnh sửa"><i class="fas fa-edit"></i></a>
                                            <button
                                                type="submit"style="background: none; border: none; cursor: pointer;">
                                                <a class="text-danger" id="delete-item" data-url=""
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
            <div class="card card-primary card-outline text-sm mb-0 mt-3">
                <form name="frmsendemail" method="post" action="{{ route('send.email') }}"
                    enctype="multipart/form-data">
                    <div class="card-header">
                        <h3 class="card-title">Gửi email đến danh sách được chọn</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="tieude">Tiêu đề:</label>
                            <input type="text" class="form-control" name="tittle" id="tieude"
                                placeholder="Tiêu đề">
                        </div>
                        <div class="form-group">
                            <label class="d-inline-block align-middle mb-1 mr-2">Upload tập tin:</label>
                            <strong
                                class="d-block mt-2 mb-2 text-sm">doc|docx|pdf|rar|zip|ppt|pptx|DOC|DOCX|PDF|RAR|ZIP|PPT|PPTX|xls|jpg|png|gif|JPG|PNG|GIF|xls|XLS</strong>
                            <div class="custom-file my-custom-file">
                                <input type="file" class="custom-file-input" name="file" id="file">
                                <label class="custom-file-label" for="file">Chọn file</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="noidung">Nội dung thông tin:</label>
                            <textarea class="form-control form-control-ckeditor" name="content" id="noidung" rows="5"
                                placeholder="Nội dung thông tin"></textarea>
                        </div>
                        <input type="hidden" name="listemail" id="listemail">
                    </div>
                </form>
            </div>
            <div class="card-footer text-sm">
                {{-- <a class="btn btn-sm bg-gradient-success text-white" id="send-email" title="Gửi email"><i
                        class="fas fa-paper-plane mr-2"></i>Gửi email</a> --}}
                <div class="card-footer text-sm">
                    <button type="submit" class="btn btn-sm bg-gradient-success text-white" title="Gửi email"><i
                            class="fas fa-paper-plane mr-2"></i>Gửi email</button>
                </div>

                <a class="btn btn-sm bg-gradient-primary text-white" href="#" title="Thêm mới"><i
                        class="fas fa-plus mr-2"></i>Thêm mới</a>
                <a class="btn btn-sm bg-gradient-danger text-white" id="delete-all"
                    data-url="index.php?com=newsletter&act=delete&type=dangkynhantin&p=1" title="Xóa tất cả"><i
                        class="far fa-trash-alt mr-2"></i>Xóa tất cả</a>
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
        $('.update-stt').change(function() {
            var item_id = $(this).data('id');
            var new_number = $(this).val();

            $.ajax({
                type: 'POST',
                url: '/mail/contact', // Thay đổi thành URL phù hợp với route của bạn
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
    {{-- <script>
        $(document).ready(function() {
            $('#send-email').click(function() {
                var listEmails = [];
                $('.select-checkbox:checked').each(function() {
                    listEmails.push($(this).val());
                });
                $('#listemail').val(listEmails.join(','));
                $('form[name="frmsendemail"]').submit();
            });
        });
    </script> --}}



</body>

</html>
