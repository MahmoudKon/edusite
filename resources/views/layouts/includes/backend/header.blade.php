<!DOCTYPE html>
<html class="loading" lang="{{ App::getLocale() }}"
    data-textdirection="{{ LaravelLocalization::getCurrentLocaleDirection() }}"
    dir="{{ LaravelLocalization::getCurrentLocaleDirection() }}">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description"
        content="Modern admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities with bitcoin dashboard.">
    <meta name="keywords"
        content="admin template, modern admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
    <meta name="author" content="PIXINVENT">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Dashboard {{ getModel() == 'dashboard' ? '' : ' | ' . ucfirst(getModel()) }}</title>

    {{-- ************** START ICON ************** --}}
    <link rel="apple-touch-icon" href="{{ path('images/ico/e-learning.png') }}">
    <link rel="shortcut icon" type="image/x-icon" href="{{ path('images/ico/favicon.ico') }}">
    {{-- ************** START ICON ************** --}}

    {{-- ************** START FONTS AWESOME ************** --}}
    <link rel="stylesheet" type="text/css" href="{{ path('fonts/line-awesome/css/line-awesome.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('fonts/fontawesome/css/all.min.css') }}">
    {{-- ************** END FONTS AWESOME ************** --}}

    {{-- ************** START RTL , LTR CSS FILES ************** --}}
    @if (App::isLocale('ar'))
    <link rel="stylesheet" type="text/css" href="{{ path('css-rtl/vendors.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css-rtl/app.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css-rtl/custom-rtl.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css-rtl/core/menu/menu-types/vertical-menu.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css-rtl/core/colors/palette-gradient.css') }}">
    @else
    <link rel="stylesheet" type="text/css" href="{{ path('css/vendors.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css/app.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css/core/menu/menu-types/vertical-menu.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css/core/colors/palette-gradient.css') }}">
    {{ config()->set('sweetalert.toast_position', 'top-end') }}
    @endif
    {{-- ************** END RTL , LTR CSS FILES ************** --}}

    {{-- ************** START MODERN CSS ************** --}}
    <link rel="stylesheet" type="text/css" href="{{ path('vendors/css/forms/selects/select2.min.css') }}">
    {{-- ************** END MODERN CSS ************** --}}

    {{-- ************** START DATATABLES ************** --}}
    <link rel="stylesheet" type="text/css" href="{{ path('vendors/css/tables/datatable/datatables.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('vendors/css/tables/extensions/buttons.dataTables.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('css/plugins/animate/animate.css') }}">
    {{-- ************** START DATATABLES ************** --}}

    {{-- ************** START CUSTOM CSS ************** --}}
    <link rel="stylesheet" type="text/css" href="{{ path('custom/css/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('custom/css/loading.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ path('custom/css/preview-file.css') }}">
    {{-- ************** END CUSTOM CSS ************** --}}

    @yield('style')
</head>

<body class="vertical-layout vertical-menu content-detached-left-sidebar menu-expanded fixed-navbar" data-open="click"
    data-menu="vertical-menu" data-col="content-detached-left-sidebar">
