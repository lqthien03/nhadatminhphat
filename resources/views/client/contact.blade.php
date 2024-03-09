<!DOCTYPE html>
<html lang="vi|en">

<head>
    <!-- Basehref -->
    {{-- <base href="https://nhadatminhphat.com.vn/"/> --}}
    <!-- UTF-8 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Title, Keywords, Description -->
    <title>{{ $seo->first()->seo_tittle }}</title>
    <meta name="keywords" content="{{ $seo->first()->seo_keyword }}" />
    <meta name="description" content="{{ $seo->first()->seo_description }}" />
    <!-- Robots -->
    <meta name="robots" content="index,follow" />
    <!-- Favicon -->
    <link href="{{ asset('products/' . $favicon->first()->image) }}" rel="shortcut icon" type="image/x-icon" />
    <!-- Webmaster Tool -->
    <!-- GEO -->
    <meta name="geo.region" content="VN" />
    <meta name="geo.placename" content="Hồ Chí Minh" />
    <meta name="geo.position" content="10.823099;106.629664" />
    <meta name="ICBM" content="10.823099, 106.629664" />
    <!-- Author - Copyright -->
    <meta name='revisit-after' content='1 days' />
    <meta name="author" content="{{ $seo->first()->seo_tittle }}" />
    <meta name="copyright" content="{{ $setting->copyright }}" />
    <!-- Facebook -->
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="{{ $seo->first()->seo_tittle }} " />
    <meta property="og:title" content="{{ $seo->first()->seo_tittle }}" />
    <meta property="og:description" content="{{ $seo->first()->seo_description }}" />
    <meta property="og:url" content="{{ $setting->website }}/lien-he" />
    <meta property="og:image" content="{{ asset('products/' . $logo->first()->image) }}" />
    <meta property="og:image:alt" content="{{ $seo->first()->seo_tittle }}" />
    <meta property="og:image:type" content="image/png" />
    <meta property="og:image:width" content="150" />
    <meta property="og:image:height" content="100" />
    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="{{ $setting->email }}" />
    <meta name="twitter:creator" content="{{ $seo->first()->seo_tittle }}" />
    <meta property="og:url" content="{{ $setting->website }}/lien-he" />
    <meta property="og:title" content="{{ $seo->first()->seo_tittle }}" />
    <meta property="og:description" content="{{ $seo->first()->seo_description }}" />
    <meta property="og:image" content="{{ asset('products/' . $logo->first()->image) }}" />
    <!-- Canonical -->
    <link rel="canonical" href="{{ $setting->website }}/lien-he" />
    <!-- Chống đổi màu trên IOS -->
    <meta name="format-detection" content="telephone=no">
    <!-- Viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <link href="{{ URL::asset('assets/bootstrap/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ URl::asset('assets/css/all.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/fancybox3/jquery.fancybox.css') }}">
    <link href="{{ URL::asset('assets/slick/slick.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/slick/slick-theme.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/fotorama/fotorama.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/magiczoomplus/magiczoomplus.css') }}">
    <link href="{{ URL::asset('assets/css/style.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/css/cart.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/css/media.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/css/animate.css') }}" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-179467531-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-179467531-1');
    </script>
    <script type="text/javascript" src="./assets/js/jquery.min.js"></script>
</head>

<body>
    <div class="wapper">
        <ul class="h-card none">
            <li class="h-fn fn">NHÀ ĐẤT MINH PHÁT</li>
            <li class="h-org org">NHÀ ĐẤT MINH PHÁT</li>
            <li class="h-tel tel">0935613986</li>
            <li><a class="u-url ul" href="https://nhadatminhphat.com.vn/">https://nhadatminhphat.com.vn/</a></li>
        </ul>
        <h1 class="hidden-seoh"></h1>
        <div class="wap_header clear">
            <div class="header main_fix">
                <a class="logo" href=""><img src="{{ asset('products/' . $logo->first()->image) }}" /></a>
                <a class="banner" href=""><img src="{{ asset('products/' . $banner->first()->image) }}" /></a>

                <a class="hotline hidden_m2">
                    <p>Hotline: <span>{{ $setting->hotline }} <b>{{ $setting->phone }}</b></span></p>
                </a>
            </div>
        </div>

        <div class="wap_menu clear hidden_m">
            <div class="menu main_fix">
                <ul>
                    <li><a class="" href="/" title="Trang chủ">Trang chủ</a></li>

                    <li><a class="" href="/gioi-thieu" title="Giới thiệu">Giới thiệu</a></li>

                    <li><a class="" href="/san-pham" title="Nhà đất">Nhà đất</a>
                        <ul>
                            @foreach ($level1products as $item)
                                <li>
                                    <a href="san-phams?id={{ $item->id }}">{{ $item->tittle }}</a>
                                    <ul>
                                        @if ($item->Level1ChildrentProduct->count())
                                            @foreach ($item->Level1ChildrentProduct as $item)
                                                <li><a
                                                        href="san-phamss?id={{ $item->id }}">{{ $item->tittle }}</a>
                                                </li>
                                            @endforeach
                                        @endif
                                    </ul>
                                </li>
                            @endforeach
                        </ul>
                    </li>

                    <li><a class="" href="/thu-tuc-nha-dat" title="Thủ thục nhà đất">Thủ thục nhà đất</a></li>

                    <li><a class="" href="/tu-van" title="Tư vấn">Tư vấn</a></li>

                    <li><a class="" href="/tin-tuc" title="Tin tức">Tin tức</a>
                    </li>

                    <li><a class="active" href="/lien-he" title="Liên hệ">Liên hệ</a></li>
                </ul>
                <div class="search">
                    <input type="text" id="keyword" placeholder="Nhập từ khóa cần tìm..."
                        onkeypress="doEnter(event,'keyword');" />
                    <p onclick="onSearch('keyword');"><i class="fas fa-search"></i></p>
                </div>
            </div>
        </div>
        <div class="menu_mobi_add hidden_d"></div>
        <div class="menu_mobi hidden_d">
            <p class="menu_baophu"></p>
            <p class="icon_menu_mobi"><i class="fas fa-bars"></i>Menu</p>
            <div class="search search_m">
                <input type="text" id="keyword2" placeholder="Nhập từ khóa cần tìm..."
                    onkeypress="doEnter(event,'keyword2');" />
                <p onclick="onSearch('keyword2');"><i class="fas fa-search"></i></p>
            </div>
        </div>
        <div class="breadCrumbs">
            <div class="main_fix">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-decoration-none" href="/"><span>Trang
                                chủ</span></a></li>
                    <li class="breadcrumb-item active"><a class="text-decoration-none" href="/lien-he"><span>Liên
                                hệ</span></a></li>
                </ol>
                <script type="application/ld+json">{"@context": "https://schema.org","@type": "BreadcrumbList","itemListElement": [{"@type":"ListItem","position":1,"name":"Li\u00ean h\u1ec7","item":"https:\/\/nhadatminhphat.com.vn\/lien-he"}]}</script>
            </div>
        </div>
        <div class="main_content main_fix clear">
            <div class="title-main"><span>Liên hệ</span></div>
            <div class="content-main w-clear">
                <div class="top-contact">
                    <div class="article-contact">
                        {!! $contact->first()->content !!}
                    </div>
                    <form class="form-contact validation-contact" novalidate method="post"
                        action="{{ route('store.mail') }}" enctype="multipart/form-data" id="FormContact">
                        @csrf
                        <div class="row">
                            <div class="input-contact col-sm-6">
                                <input type="text" class="form-control" id="ten" name="name"
                                    placeholder="Họ tên" required />
                                <div class="invalid-feedback">Vui lòng nhập họ và tên</div>
                            </div>
                            <div class="input-contact col-sm-6">
                                <input type="number" class="form-control" id="dienthoai" name="phone"
                                    placeholder="Số điện thoại" required />
                                <div class="invalid-feedback">Vui lòng nhập số điện thoại</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-contact col-sm-6">
                                <input type="text" class="form-control" id="diachi" name="address"
                                    placeholder="Địa chỉ" required />
                                <div class="invalid-feedback">Vui lòng nhập địa chỉ</div>
                            </div>
                            <div class="input-contact col-sm-6">
                                <input type="email" class="form-control" id="email" name="email"
                                    placeholder="Email" required />
                                <div class="invalid-feedback">Vui lòng nhập địa chỉ email</div>
                            </div>
                        </div>
                        <div class="input-contact">
                            <input type="text" class="form-control" id="tieude" name="topic"
                                placeholder="Chủ đề" required />
                            <div class="invalid-feedback">Vui lòng nhập chủ đề</div>
                        </div>
                        <div class="input-contact">
                            <textarea class="form-control" id="noidung" name="content" placeholder="Nội dung" required></textarea>
                            <div class="invalid-feedback">Vui lòng nhập nội dung</div>
                        </div>

                        <input type="submit" class="btn btn-primary" value="Gửi" disabled />
                        <input type="hidden" class="btn btn-primary" name="submit-contact" value="Gửi" />
                        <input type="reset" class="btn btn-secondary" value="Nhập lại" />
                        <input type="hidden" name="recaptcha_response_contact" id="recaptchaResponseContact">
                    </form>
                </div>
                <div class="bottom-contact"><iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2330.2185849500174!2d106.6023972751385!3d10.815527989362677!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752b95662163d9%3A0xa139e3984b7ff50f!2zTMOqIFRy4buNbmcgVOG6pW4sIELDrG5oIEjGsG5nIEhvw6AsIELDrG5oIFTDom4sIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1703776412320!5m2!1svi!2s"
                        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe></div>
            </div>
        </div>
        <div class="wap_footer clear">
            <div class="footer main_fix">
                <div class="main_f">
                    <p class="title_f">Thông tin liên hệ</p>
                    {!! $footer->first()->content !!}
                </div>

                <div class="fanpage_f">
                    <p class="title_f">Fanpage facebook</p>
                    <div id="fanpage-facebook"></div>
                </div>

                <div class="thongke_f">
                    <p class="title_f">Thống kê truy cập</p>
                    <ul>
                        <li>Đang online: 1</li>
                        <li>Hôm nay: 48</li>
                        <li>Tuần: 298</li>
                        <li>Tháng: 48</li>
                        <li>Tổng truy cập: 14910</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wap_copy clear">
            <div class="copy main_fix">
                <p class="ds">{{ $setting->copyright }}</p>
            </div>
        </div>
        <div id="footer-map">
            {!! $setting->map_iframe !!}
        </div>
        <div class="quick_contact hidden_m2">
            <a class="button_gradient" href="tel:{{ $setting->hotline }}">
                <span class="button_gradient"><i class="fas fa-phone-alt"></i></span>
                <p class="contact-phone">{{ $setting->hotline }}</p>
            </a>
        </div>
        <a class="btn-zalo btn-frame text-decoration-none hidden_m2" target="_blank"
            href="https://zalo.me/{{ $setting->zalo }}">
            <div class="animated infinite zoomIn kenit-alo-circle"></div>
            <div class="animated infinite pulse kenit-alo-circle-fill"></div>
            <i><img src="assets/images/zl.png" alt="Zalo" class="no_lazy"></i>
        </a>
        <a class="btn-phone btn-frame text-decoration-none hidden_m2" href="tel:{{ $setting->phone }}">
            <div class="animated infinite zoomIn kenit-alo-circle"></div>
            <div class="animated infinite pulse kenit-alo-circle-fill"></div>
            <i><img src="assets/images/hl.png" alt="Hotline" class="no_lazy"></i>
        </a>
        <!-- Modal notify -->
        <div class="modal modal-custom fade" id="popup-notify" tabindex="-1" role="dialog"
            aria-labelledby="popup-notify-label" aria-hidden="true">
            <div class="modal-dialog modal-dialog-top modal-md" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h6 class="modal-title" id="popup-notify-label">Thông báo</h6>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body"></div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Thoát</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal cart -->
        <div class="modal fade" id="popup-cart" tabindex="-1" role="dialog" aria-labelledby="popup-cart-label"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-top modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h6 class="modal-title" id="popup-cart-label">Giỏ hàng của bạn</h6>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body"></div>
                </div>
            </div>
        </div>

        <!-- Modal xem nhanh sản phẩm -->
        <div class="modal fade" id="popup-pro-detail" tabindex="-1" role="dialog"
            aria-labelledby="popup-pro-detail-label" aria-hidden="true">
            <div class="modal-dialog modal-dialog-top modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h6 class="modal-title" id="popup-pro-detail-label">XEM NHANH SẢN PHẨM</h6>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body"></div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            var NN_FRAMEWORK = NN_FRAMEWORK || {};
            var CONFIG_BASE = 'https://nhadatminhphat.com.vn/';
            var WEBSITE_NAME = 'NHÀ ĐẤT MINH PHÁT';
            var TIMENOW = '01/03/2024';
            var SHIP_CART = false;
            var GOTOP = 'assets/images/top.png';
            var LANG = {
                'no_keywords': 'Chưa nhập từ khóa tìm kiếm',
                'delete_product_from_cart': 'Bạn muốn xóa sản phẩm này khỏi giỏ hàng ? ',
                'no_products_in_cart': 'Không tồn tại sản phẩm nào trong giỏ hàng !',
                'wards': 'Phường/xã',
                'back_to_home': 'Về trang chủ',
            };
        </script>
        <script type="text/javascript" src="{{ URL::asset('assets/bootstrap/bootstrap.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/slick/slick.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.lazyload.pack.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/fotorama/fotorama.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/fancybox3/jquery.fancybox.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/magiczoomplus/magiczoomplus.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.animateNumber.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.fittext.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.lettering.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.textillate.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/functions.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/apps.js') }}"></script>


        <!-- Js Google Recaptcha V3 -->
        <script src="https://www.google.com/recaptcha/api.js?render=6Lel_T8pAAAAAOsSZaq6xkbTqQbGrWoU2vIB1bWD"></script>

        <script type="text/javascript">
            grecaptcha.ready(function() {

                grecaptcha.ready(function() {
                    document.getElementById('FormNewsletter').addEventListener("submit", function(event) {
                        event.preventDefault();
                        grecaptcha.execute('6Lel_T8pAAAAAOsSZaq6xkbTqQbGrWoU2vIB1bWD', {
                            action: 'Newsletter'
                        }).then(function(token) {
                            document.getElementById("recaptchaResponseNewsletter").value =
                                token;
                            document.getElementById('FormNewsletter').submit();
                        });
                    }, false);
                });

                grecaptcha.ready(function() {
                    document.getElementById('FormContact').addEventListener("submit", function(event) {
                        event.preventDefault();
                        grecaptcha.execute('6Lel_T8pAAAAAOsSZaq6xkbTqQbGrWoU2vIB1bWD', {
                            action: 'contact'
                        }).then(function(token) {
                            document.getElementById("recaptchaResponseContact").value = token;
                            document.getElementById('FormContact').submit();
                        });
                    }, false);
                });
            });
        </script>

        <!-- Js Structdata -->
        <!-- Js Addons -->
        <div id="script-main"></div>
        <script type="text/javascript">
            $(function() {
                var a = !1;
                $(window).scroll(function() {
                    $(window).scrollTop() > 10 && !a && ($("#fanpage-facebook").load(
                        "ajax/ajax_addons.php?type=fanpage-facebook"), a = !0)
                })
            });
        </script>
        <script type="text/javascript">
            $(function() {
                var a = !1;
                $(window).scroll(function() {
                    $(window).scrollTop() > 0.5 && !a && ($("#script-main").load(
                        "ajax/ajax_addons.php?type=script-main"), a = !0)
                })
            });
        </script><!-- Js Body -->
    </div>
</body>

</html>
