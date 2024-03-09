<!doctype html>
<html lang="en">

<head>
    <title>Đăng nhập</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="{{ url('./css/adminlte.css') }}">
    <link rel="stylesheet" href="{{ url('./css/adminlte-style.css') }}">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        .login-view-footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            padding: 10px;
            text-align: center;
            background-color: #2c5baa;
            color: white
                /* Thêm các thuộc tính khác tùy ý */
        }
    </style>
</head>

<body class="sidebar-mini hold-transition text-sm login-page">
    {{-- <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">BLUE WEBSITE</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <div class="login-wrap p-4 p-md-5">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="fa fa-user-o"></span>
                        </div>
                        <h3 class="text-center mb-4">Đăng nhập hệ thống</h3>
                        <form action="{{ route('login') }}" method="POST" class="login-form">
                            @csrf
                            <div class="form-group">
                                <input type="text" class="form-control rounded-left" placeholder="Tài khoản"
                                    name="email" required>
                            </div>
                            <div class="form-group d-flex">
                                <input type="password" class="form-control rounded-left" placeholder="Mật khẩu"
                                    name="password" required>
                            </div>
                            <div class="form-group d-md-flex">
                                <div class="w-50">
                                    <label class="checkbox-wrap checkbox-primary">
                                        Ghi nhớ
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="w-50 text-md-right">
                                    <a href="{{ route('password.request') }}">Quên mật khẩu</a>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary rounded submit p-3 px-5">Đăng
                                    nhập</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <div class="login-view-website text-sm"><a href="../" target="_blank" title="Xem website"><i
                class="fas fa-reply mr-2"></i>Xem website</a></div>


    <div class="login-box">
        <div class="card">
            <div class="card-body login-card-body">
                <img src="./images/logo-blue.png" alt="Mô tả hình ảnh" style="width:270px">
                <p class="login-box-msg">Đăng nhập hệ thống</p>
                <form action="{{ route('login') }}" method="POST">
                    @csrf
                    <div class="input-group mb-3">
                        <div class="input-group-append login-input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                        <input type="text" class="form-control text-sm" name="name" id="username"
                            placeholder="Tài khoản *" autocomplete="off">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-append login-input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                        <input type="password" class="form-control text-sm" name="password" id="password"
                            placeholder="Mật khẩu *" autocomplete="off">
                        <div class="input-group-append">
                            <div class="input-group-text show-password">
                                <span class="fas fa-eye"></span>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-sm bg-gradient-danger btn-block btn-login text-sm p-2">
                        <div class="sk-chase d-none">
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                            <div class="sk-chase-dot"></div>
                        </div>
                        <span>Đăng nhập</span>
                    </button>
                    <div class="alert my-alert alert-login d-none text-center text-sm p-2 mb-0 mt-2" role="alert">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="login-view-footer text-sm">
        © Power by Công ty Blueweb
    </div>


    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const passwordInput = document.getElementById('password');
            const showPasswordButton = document.querySelector('.show-password');

            showPasswordButton.addEventListener('click', function() {
                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                    showPasswordButton.innerHTML = '<span class="fas fa-eye-slash"></span>';
                } else {
                    passwordInput.type = 'password';
                    showPasswordButton.innerHTML = '<span class="fas fa-eye"></span>';
                }
            });
        });
    </script>

    <script src="js/jquery.min.js"></script>






</body>

</html>
