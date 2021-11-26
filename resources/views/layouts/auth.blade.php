<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="rtl">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Edusite is an educational site.">
    <meta name="keywords" content="edusite, education, e-learning, learn">
    <meta name="author" content="PIXINVENT">
    <title>@yield('page_title')</title>
    <link rel="apple-tou ch-icon" href="{{ path('images/ico/apple-icon-120.png') }}">
    <link rel="shortcut icon" type="image/x-icon" href="{{ path('images/ico/favicon.ico') }}">

    {{-- ************** BEGIN FONTS AWESOME ************** --}}
    <link rel="stylesheet" type="text/css" href="{{ path('fonts/fontawesome/css/all.min.css') }}">
    {{-- ************** END FONTS AWESOME ************** --}}

    @if (App::isLocale('ar'))
    <link rel="stylesheet" type="text/css" href="{{ path('css-rtl/vendors.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css-rtl/app.css') }}">
    @else
    <link rel="stylesheet" type="text/css" href="{{ path('css/vendors.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css/app.css') }}">
    @endif
    <link rel="stylesheet" type="text/css" href="{{ path('custom/css/loading.css') }}">

    @yield('stype')
</head>

<body class="vertical-layout vertical-menu 1-column   menu-expanded blank-page blank-page" data-open="click"
    data-menu="vertical-menu" data-col="1-column">
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">
                <section class="flexbox-container">
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="col-md-4 col-10 box-shadow-2 p-0">
                            <div class="card border-grey border-lighten-3 m-0">
                                <div class="card-header border-0 pb-0">
                                    <div class="card-title text-center">
                                        <div class="pb-1">
                                            <img src="{{ asset('assets/frontend/images/logo.png') }}" width="125px"
                                                alt="logo">
                                        </div>
                                    </div>
                                    <h6 class="card-subtitle line-on-side text-muted text-center font-medium-2 p-0">
                                        <span>@yield('form_title')</span>
                                    </h6>
                                </div>
                                <div class="card-content">
                                    <div class="card-body pt-0">
                                        @yield('content')
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="{{ path('vendors/js/vendors.min.js') }}"></script>
    <script type="text/javascript" src="{{ path('vendors/js/forms/icheck/icheck.min.js') }}"></script>
    <script>
        $('button[type="submit"]').click(function(e) {
            e.preventDefault();
            let form = $(this).closest('form');
            form.closest('.card').addClass('load');
            form.submit();
        });
    </script>
    @yield('script')
</body>

</html>
