<!DOCTYPE html>
<html lang="vi|en">

<head>
    <!-- Basehref -->
    {{-- <base href="https://nhadatminhphat.com.vn/"/> --}}
    <!-- UTF-8 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Title, Keywords, Description -->
    <title>{{ $seo->first()->seo_tittle }}</title>
    <meta name="keywords" content="{{ $seo->first()->seo_keywords }}" />
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
    <meta property="og:url" content="{{ $setting->website }}/{{ $news->tittle }}" />
    <meta property="og:image" content="{{ asset('products/' . $logo->first()->image) }}" />
    <meta property="og:image:alt" content="{{ $seo->first()->seo_tittle }}" />
    <meta property="og:image:type" content="image/png" />
    <meta property="og:image:width" content="150" />
    <meta property="og:image:height" content="100" />
    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="{{ $setting->email }}" />
    <meta name="twitter:creator" content="{{ $seo->first()->seo_tittle }}" />
    <meta property="og:url" content="{{ $setting->website }}" />
    <meta property="og:title" content="{{ $seo->first()->seo_tittle }}" />
    <meta property="og:description" content="{{ $seo->first()->seo_description }}" />
    <meta property="og:image" content="{{ asset('products/' . $logo->first()->image) }}" />
    <!-- Canonical -->
    <link rel="canonical" href="{{ $setting->website }}/{{ $news->link }}" />
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
        <h1 class="hidden-seoh">4 lý do nên thận trọng khi đầu tư bất động sản năm 2018</h1>
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
                            <li><a href="nha-72m2-mot-lau-duc-can-tien-ban-gap">Nhà 72m2 một lầu đúc cần tiền bán gấp
                                </a></li>
                            <li><a href="nha-dat-ban">NHÀ ĐẤT BÁN</a>
                                <ul>
                                    <li><a href="nha-dat-binh-tan">NHÀ ĐẤT BÌNH TÂN</a></li>
                                    <li><a href="giay-tay-cao-cap">NHÀ ĐẤT TÂY NINH</a></li>
                                    <li><a href="nha-dat-quan-12">NHÀ ĐẤT QUẬN 12</a></li>
                                    <li><a href="nha-dat-hoc-mon">NHÀ ĐẤT HÓC MÔN</a></li>
                                    <li><a href="nha-dat-cu-chi">NHÀ ĐẤT CỦ CHI</a></li>
                                    <li><a href="nha-dat-q3-tphcm">NHÀ ĐẤT Q3 TP.HCM</a></li>
                                    <li><a href="nha-dat-tan-phu">NHÀ ĐẤT TÂN PHÚ</a></li>
                                    <li><a href="nha-dat-binh-chanh">NHÀ ĐẤT BÌNH CHÁNH</a></li>
                                </ul>
                            </li>
                            <li><a href="nha-dat-cho-thue">NHÀ ĐẤT CHO THUÊ</a></li>
                        </ul>
                    </li>

                    <li><a class="" href="/thu-tuc-nha-dat" title="Thủ thục nhà đất">Thủ thục nhà đất</a></li>

                    <li><a class="" href="/tu-van" title="Tư vấn">Tư vấn</a></li>

                    <li><a class="active" href="/tin-tuc" title="Tin tức">Tin tức</a>
                    </li>

                    <li><a class="" href="/lien-he" title="Liên hệ">Liên hệ</a></li>
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
                    <li class="breadcrumb-item "><a class="text-decoration-none" href="/tin-tuc"><span>Tin
                                tức</span></a></li>
                    <li class="breadcrumb-item active"><a class="text-decoration-none"
                            href="/tin-tuc/{{ $news->link }}"><span>{{ $news->tittle }}</span></a></li>
                </ol>
                <script type="application/ld+json">{"@context": "https://schema.org","@type": "BreadcrumbList","itemListElement": [{"@type":"ListItem","position":1,"name":"Tin t\u1ee9c","item":"https:\/\/nhadatminhphat.com.vn\/tin-tuc"},{"@type":"ListItem","position":2,"name":"4 l\u00fd do n\u00ean th\u1eadn tr\u1ecdng khi \u0111\u1ea7u t\u01b0 b\u1ea5t \u0111\u1ed9ng s\u1ea3n n\u0103m 2018","item":"https:\/\/nhadatminhphat.com.vn\/4-ly-do-nen-than-trong-khi-dau-tu-bat-dong-san-nam-2018"}]}</script>
            </div>
        </div>
        <div class="main_content main_fix clear">
            <div class="w_1000">
                <div class="title-main"><span>{{ $news->tittle }}</span></div>


                <div class="content-main" id="toc-content">
                    {!! $news->content !!}
                </div>
                <div class="a2a_kit a2a_kit_size_32 a2a_default_style share" style="height:50px;"
                    data-a2a-title="Share"><a class="a2a_dd"
                        href="https://nhadatminhphat.com.vn/4-ly-do-nen-than-trong-khi-dau-tu-bat-dong-san-nam-2018"></a><a
                        class="a2a_button_facebook"></a><a class="a2a_button_twitter"></a><a
                        class="a2a_button_facebook_messenger"></a>
                    <div class="zalo-share-button"
                        data-href="https://nhadatminhphat.com.vn/4-ly-do-nen-than-trong-khi-dau-tu-bat-dong-san-nam-2018"
                        data-oaid="579745863508352884" data-layout="3" data-color="blue" data-customize=false></div>
                </div>
                <style type="text/css">
                    .a2a_svg {
                        height: 30px !important
                    }
                </style>

                <script src="https://sp.zalo.me/plugins/sdk.js"></script>
                <script async src="https://static.addtoany.com/menu/page.js"></script>
                <div class="share othernews">
                    <b>Bài viết khác:</b>
                    <ul class="list-news-other">
                        <li><a href="hien-tuong-sot-dat-hien-nay-se-khong-lap-lai-kich-ban-10-nam-truoc"
                                title="Hiện tượng sốt đất hiện nay sẽ không lặp lại kịch bản 10 năm trước">Hiện tượng
                                sốt đất hiện nay sẽ không lặp lại kịch bản 10 năm trước</a></li>
                        <li><a href="vi-sao-gia-dat-nen-tang-phi-ma-tu-bac-vao-nam"
                                title="Vì sao giá đất nền tăng phi mã từ Bắc vào Nam?">Vì sao giá đất nền tăng phi mã
                                từ Bắc vào Nam?</a></li>
                    </ul>
                    <div class="pagination-home"></div>
                </div>
            </div>
        </div>
        <div class="wap_footer clear">
            <div class="footer main_fix">
                <div class="main_f">
                    <p class="title_f">Thông tin liên hệ</p>
                    <p><span style="font-size:24px;"><span style="line-height:2;"><strong>NHÀ ĐẤT MINH
                                    PHÁT</strong></span></span></p>

                    <h4><span style="font-size:14px;"><span style="line-height:2;">Địa Chỉ: 740/11 Lê Trọng Tấn, P.
                                Bình Hưng Hòa, Q. Bình Tân, TP. HCM</span></span></h4>

                    <p><span style="font-size:14px;"><span style="line-height:2;">Hotline: <strong>0935.613.986 -
                                    0903.250.446</strong></span></span></p>

                    <h5><span style="font-size:14px;"><span style="line-height:2;">Email: <a>phuong
                                    280280@gmail.com</a></span></span></h5>

                    <h2><span style="font-size:14px;"><span style="line-height:2;">Website:
                                <a>nhadatminhphat.com.vn</a></span></span></h2>

                    <p><span style="line-height:2;"><a
                                href="http://www.dmca.com/Protection/Status.aspx?ID=09db14cc-6ae5-455f-b21a-b4eabbb921ee&amp;refurl=http://nhadatminhphat.com.vn/"
                                title="DMCA.com Protection Status"><img
                                    src="https://images.dmca.com/Badges/dmca_protected_sml_120b.png?ID=09db14cc-6ae5-455f-b21a-b4eabbb921ee" /></a>
                        </span></p>

                    <p><u>MẠNG XÃ HỘI: </u></p>

                    <p
                        style="box-sizing: border-box; padding: 0px; outline: none; color: rgb(51, 51, 51); font-family: body; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial;">
                        <a href="https://www.google.com/"
                            style="box-sizing:border-box;padding:0px;outline:none;cursor:pointer;text-decoration:none;"
                            title=""><img alt="NHÀ ĐẤT MINH PHÁT"
                                onerror="this.src='/assets/images/noimage.png';"
                                original="upload/photo/mxh1-1-1957.png"
                                src="https://demo-saigonwebsite.com/bds/upload/photo/mxh1-1-1957.png"
                                style="box-sizing:border-box;margin:0px 2px;padding:0px;outline:none;max-width:100%;height:auto !important;max-height:35px;display:inline;"
                                title="" /></a> <a href="https://www.google.com/"
                            style="box-sizing:border-box;padding:0px;outline:none;cursor:pointer;text-decoration:none;"
                            title=""><img alt="NHÀ ĐẤT MINH PHÁT"
                                onerror="this.src='/assets/images/noimage.png';"
                                original="upload/photo/mxh1-2-1178.png"
                                src="https://demo-saigonwebsite.com/bds/upload/photo/mxh1-2-1178.png"
                                style="box-sizing:border-box;margin:0px 2px;padding:0px;outline:none;max-width:100%;height:auto !important;max-height:35px;display:inline;"
                                title="" /></a> <a href="https://www.google.com/"
                            style="box-sizing:border-box;padding:0px;outline:none;cursor:pointer;text-decoration:none;"
                            title=""><img alt="NHÀ ĐẤT MINH PHÁT"
                                onerror="this.src='/assets/images/noimage.png';"
                                original="upload/photo/mxh1-3-4655.png"
                                src="https://demo-saigonwebsite.com/bds/upload/photo/mxh1-3-4655.png"
                                style="box-sizing:border-box;margin:0px 2px;padding:0px;outline:none;max-width:100%;height:auto !important;max-height:35px;display:inline;"
                                title="" /></a> <a href="https://www.google.com/"
                            style="box-sizing:border-box;padding:0px;outline:none;cursor:pointer;text-decoration:none;"
                            title=""><img alt="NHÀ ĐẤT MINH PHÁT"
                                onerror="this.src='/assets/images/noimage.png';"
                                original="upload/photo/mxh1-4-6766.png"
                                src="https://demo-saigonwebsite.com/bds/upload/photo/mxh1-4-6766.png"
                                style="box-sizing:border-box;margin:0px 2px;padding:0px;outline:none;max-width:100%;height:auto !important;max-height:35px;display:inline;"
                                title="" /></a>
                    </p>
                </div>

                <div class="fanpage_f">
                    <p class="title_f">Fanpage facebook</p>
                    <div id="fanpage-facebook"></div>
                </div>

                <div class="thongke_f">
                    <p class="title_f">Thống kê truy cập</p>
                    <ul>
                        <li>Đang online: 1</li>
                        <li>Hôm nay: 52</li>
                        <li>Tuần: 52</li>
                        <li>Tháng: 221</li>
                        <li>Tổng truy cập: 15083</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wap_copy clear">
            <div class="copy main_fix">
                <p class="ds">{{ $setting->copyright }} </p>
            </div>
        </div>
        <div id="footer-map"></div>
        <div class="quick_contact hidden_m2">
            <a class="button_gradient" href="tel:0935613986">
                <span class="button_gradient"><i class="fas fa-phone-alt"></i></span>
                <p class="contact-phone">{{ $setting->hotline }}</p>
            </a>
        </div>
        <a class="btn-zalo btn-frame text-decoration-none hidden_m2" target="_blank"
            href="https://zalo.me/{{ $setting->zalo }}">
            <div class="animated infinite zoomIn kenit-alo-circle"></div>
            <div class="animated infinite pulse kenit-alo-circle-fill"></div>
            <i><img src="{{ asset('assets/images/zl.png') }}" alt="Zalo" class="no_lazy"></i>
        </a>
        <a class="btn-phone btn-frame text-decoration-none hidden_m2" href="tel:{{ $setting->phone }}">
            <div class="animated infinite zoomIn kenit-alo-circle"></div>
            <div class="animated infinite pulse kenit-alo-circle-fill"></div>
            <i><img src="{{ asset('assets/images/hl.png') }}" alt="Hotline" class="no_lazy"></i>
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
            var TIMENOW = '04/03/2024';
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
                    $(window).scrollTop() > 10 && !a && ($("#footer-map").load(
                        "ajax/ajax_addons.php?type=footer-map"), a = !0)
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
