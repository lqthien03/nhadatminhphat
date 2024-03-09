<!DOCTYPE html>
<html lang="vi|en">

<head>
    <!-- Basehref -->
    {{-- <base href="https://nhadatminhphat.com.vn/"/> --}}
    <!-- UTF-8 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Title, Keywords, Description -->
    <title>{{ $products->first()->seo_tittle }}</title>
    <meta name="keywords" content="{{ $products->first()->seo_keywords }}" />
    <meta name="description" content="{{ $products->first()->seo_description }}" />
    <!-- Robots -->
    <meta name="robots" content="index,follow" />
    <!-- Favicon -->
    <link href="upload/photo/logo-9090-9915.png" rel="shortcut icon" type="image/x-icon" />
    <!-- Webmaster Tool -->
    <!-- GEO -->
    <meta name="geo.region" content="VN" />
    <meta name="geo.placename" content="Hồ Chí Minh" />
    <meta name="geo.position" content="10.823099;106.629664" />
    <meta name="ICBM" content="10.823099, 106.629664" />
    <!-- Author - Copyright -->
    <meta name='revisit-after' content='1 days' />
    <meta name="author" content="{{ $products->first()->seo_tittle }}" />
    <meta name="copyright" content="{{ $setting->copyright }}" />
    <!-- Facebook -->
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="{{ $products->first()->seo_tittle }} " />
    <meta property="og:title" content="{{ $products->first()->seo_tittle }}" />
    <meta property="og:description" content="{{ $products->first()->seo_description }}" />
    <meta property="og:url" content="{{ $setting->website }}/{{ $product->link }}" />
    <meta property="og:image" content="{{ asset('products/' . $logo->first()->image) }}" />
    <meta property="og:image:alt" content="{{ $products->first()->seo_tittle }}" />
    <meta property="og:image:type" content="image/png" />
    <meta property="og:image:width" content="150" />
    <meta property="og:image:height" content="100" />
    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="{{ $setting->email }}" />
    <meta name="twitter:creator" content="{{ $products->first()->seo_tittle }}" />
    <meta property="og:url" content="{{ $setting->website }}/{{ $product->link }}" />
    <meta property="og:title" content="{{ $products->first()->seo_tittle }}" />
    <meta property="og:description" content="{{ $products->first()->seo_description }}" />
    <meta property="og:image" content="{{ asset('products/' . $logo->first()->image) }}" />
    <!-- Canonical -->
    <link rel="canonical" href="{{ $setting->website }}/{{ $product->link }}" />
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
        <h1 class="hidden-seoh">Bán nhà hẻm 5m 2 Sẹc Lê Đình Cẩn ,P .Tân Tạo ,Quận Bình Tân, Tp.Hcm</h1>
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

                    <li><a class="active" href="/san-pham" title="Nhà đất">Nhà đất</a>
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
                    <li class="breadcrumb-item "><a class="text-decoration-none" href="/san-pham"><span>Nhà
                                đất</span></a></li>
                    <li class="breadcrumb-item "><a class="text-decoration-none" href="#"><span>NHÀ ĐẤT
                                BÁN</span></a></li>
                    <li class="breadcrumb-item "><a class="text-decoration-none" href="#"><span>NHÀ ĐẤT BÌNH
                                TÂN</span></a>
                    </li>
                    <li class="breadcrumb-item active"><a class="text-decoration-none"
                            href="/san-pham/{{ $product->link }}"><span>{{ $product->tittle }}</span></a></li>
                </ol>
                <script type="application/ld+json">{"@context": "https://schema.org","@type": "BreadcrumbList","itemListElement": [{"@type":"ListItem","position":1,"name":"Nh\u00e0 \u0111\u1ea5t","item":"https:\/\/nhadatminhphat.com.vn\/san-pham"},{"@type":"ListItem","position":2,"name":"NH\u00c0 \u0110\u1ea4T B\u00c1N","item":"https:\/\/nhadatminhphat.com.vn\/nha-dat-ban"},{"@type":"ListItem","position":3,"name":"NH\u00c0 \u0110\u1ea4T B\u00ccNH T\u00c2N","item":"https:\/\/nhadatminhphat.com.vn\/nha-dat-binh-tan"},{"@type":"ListItem","position":4,"name":"B\u00e1n nh\u00e0 h\u1ebbm 5m 2 S\u1eb9c L\u00ea \u0110\u00ecnh C\u1ea9n ,P .T\u00e2n T\u1ea1o ,Qu\u1eadn B\u00ecnh T\u00e2n, Tp.Hcm","item":"https:\/\/nhadatminhphat.com.vn\/ban-nha-hem-5m-2-sec-le-dinh-can-p-tan-tao-quan-binh-tan-tphcm"}]}</script>
            </div>
        </div>
        <div class="main_content main_fix clear">
            <div class="grid-pro-detail">
                <div class="left-pro-detail">
                    <div class="album_pro">
                        <a data-zoom-id="Zoom-detail" id="Zoom-detail" class="MagicZoom" href=""
                            title="{{ $product->tittle }}"><img class="cloudzoom no_lazy"
                                src="{{ URL::asset('products/' . $product->image) }}"
                                alt="{{ $product->tittle }}"></a>

                        {{-- <a data-zoom-id="Zoom-detail" id="Zoom-detail" class="MagicZoom"
                            href="{{ URL::asset('products/' . $product->image) }}" title="{{ $product->tittle }}"><img
                                class="cloudzoom no_lazy" src="{{ URL::asset('products/' . $product->image) }}"
                                alt="{{ $product->tittle }}"></a> --}}
                    </div>

                    <div class="album_pro2">
                        {{-- @foreach ($product as $item)
                            <p><img class="cloudzoom no_lazy" src="{{ URL::asset('products/' . $product->image) }}"
                                    alt="{{ $product->tittle }}"></p>
                        @endforeach --}}


                    </div>
                </div>


                <div class="right-pro-detail">
                    <p class="title-pro-detail">{{ $product->tittle }}</p>
                    <div class="a2a_kit a2a_kit_size_32 a2a_default_style share" style="height:50px;"
                        data-a2a-title="Share"><a class="a2a_dd"
                            href="https://nhadatminhphat.com.vn/ban-nha-hem-5m-2-sec-le-dinh-can-p-tan-tao-quan-binh-tan-tphcm"></a><a
                            class="a2a_button_facebook"></a><a class="a2a_button_twitter"></a><a
                            class="a2a_button_facebook_messenger"></a>
                        <div class="zalo-share-button"
                            data-href="https://nhadatminhphat.com.vn/ban-nha-hem-5m-2-sec-le-dinh-can-p-tan-tao-quan-binh-tan-tphcm"
                            data-oaid="579745863508352884" data-layout="3" data-color="blue" data-customize=false>
                        </div>
                    </div>
                    <style type="text/css">
                        .a2a_svg {
                            height: 30px !important
                        }
                    </style>

                    <script src="https://sp.zalo.me/plugins/sdk.js"></script>
                    <script async src="https://static.addtoany.com/menu/page.js"></script>
                    <ul class="attr-pro-detail">
                        <li>
                            <label class="attr-label-pro-detail">Giá:</label>
                            <div class="attr-content-pro-detail">
                                <span class="price-new-pro-detail">
                                    {{ $product->price }}</span>
                            </div>
                        </li>
                        <li>
                            <label class="attr-label-pro-detail">Kích thước:</label>
                            <div class="attr-content-pro-detail">{{ $product->size }}</div>
                        </li>
                        <li>
                            <label class="attr-label-pro-detail">Diện tích:</label>
                            <div class="attr-content-pro-detail">{{ $product->acreage }}</div>
                        </li>
                        <li>
                            <label class="attr-label-pro-detail">Liên hệ:</label>
                            <div class="attr-content-pro-detail">{{ $product->contact }}</div>
                        </li>
                        <li>
                            <label class="attr-label-pro-detail">Địa chỉ:</label>
                            <div class="attr-content-pro-detail">{{ $product->address }}</div>
                        </li>

                        <li>
                            <label class="attr-label-pro-detail">Lượt xem:</label>
                            <div class="attr-content-pro-detail">46</div>
                        </li>
                    </ul>

                    <div class="desc-pro-detail"></div>

                </div>

                <div class="clear"></div>

                <div class="tabs-pro-detail">
                    <ul class="ul-tabs-pro-detail clear">
                        <li class="active transition" data-tabs="info-pro-detail">Thông tin sản phẩm</li>
                        <li class="transition" data-tabs="commentfb-pro-detail">Bình luận</li>
                    </ul>
                    <div class="content-tabs-pro-detail info-pro-detail active">
                        {!! $product->content !!}
                    </div>
                    <div class="content-tabs-pro-detail commentfb-pro-detail">
                        <div class="fb-comments"
                            data-href="https://nhadatminhphat.com.vn/ban-nha-hem-5m-2-sec-le-dinh-can-p-tan-tao-quan-binh-tan-tphcm"
                            data-numposts="3" data-colorscheme="light" data-width="100%"></div>
                    </div>
                </div>
            </div>



            <div class="title-main"><span>Nhà đất khác</span></div>
            <div class="wap_item">
                @foreach ($spcungloai as $item)
                    <div class="item">
                        @if ($item->new == 1)
                            <span class="moi"></span>
                        @endif
                        <p class="img_sp zoom_hinh"><a href="/san-pham/{{ $item->link }}"
                                title="Bán 57 m đất thổ cư Đường số 5,Bình Hưng Hoà, Bình Tân "><img
                                    src="{{ URL::asset('products/' . $item->image) }}"
                                    alt="Bán 57 m đất thổ cư Đường số 5,Bình Hưng Hoà, Bình Tân "></a></p>
                        <h3 class="name_sp catchuoi2"><a href="ban-57-m-dat-tho-cu-duong-so-5binh-hung-hoa-binh-tan"
                                title="Bán 57 m đất thổ cư Đường số 5,Bình Hưng Hoà, Bình Tân ">{{ $item->tittle }}</a>
                        </h3>

                        <ul>
                            <li>Giá: <span>{{ $item->price }}</span>
                                <p>Diện tích: <span>57</span></p>
                            </li>
                            <li>Liên hệ: <span>{{ $item->contact }}</span></li>
                            <li>Địa chỉ: {{ $item->address }} </li>
                        </ul>
                    </div>
                @endforeach
            </div>
            <div class="pagination-home">
                {{-- <ul class='pagination justify-content-center mb-0'>
                    <li class='page-item'><a class='page-link'
                            href='https://nhadatminhphat.com.vn/ban-nha-hem-5m-2-sec-le-dinh-can-p-tan-tao-quan-binh-tan-tphcm'><i
                                class="fas fa-caret-left"></i></a></li>
                    <li class='page-item active'><a class='page-link'>1</a></li>
                    <li class='page-item'><a class='page-link'
                            href='https://nhadatminhphat.com.vn/ban-nha-hem-5m-2-sec-le-dinh-can-p-tan-tao-quan-binh-tan-tphcm?p=2'>2</a>
                    </li>
                    <li class='page-item'><a class='page-link'
                            href='https://nhadatminhphat.com.vn/ban-nha-hem-5m-2-sec-le-dinh-can-p-tan-tao-quan-binh-tan-tphcm?p=3'>3</a>
                    </li>
                    <li class='page-item'><a class='page-link'
                            href='https://nhadatminhphat.com.vn/ban-nha-hem-5m-2-sec-le-dinh-can-p-tan-tao-quan-binh-tan-tphcm?p=3'><i
                                class="fas fa-caret-right"></i></a></li>
                </ul> --}}
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
                        <li>Hôm nay: 24</li>
                        <li>Tuần: 24</li>
                        <li>Tháng: 193</li>
                        <li>Tổng truy cập: 15055</li>
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
            <a class="button_gradient" href="tel:{{ $setting->hotline }}">
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
