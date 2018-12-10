<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title')</title>

    <link href="{{ asset('assets/admin/adminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/adminLTE/bower_components/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/adminLTE/bower_components/Ionicons/css/ionicons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/adminLTE/dist/css/AdminLTE.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/adminLTE/dist/css/skins/_all-skins.min.css') }}" rel="stylesheet">

</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

    @include('layouts.partials.header')


    <!-- =============================================== -->

    <!-- Left side column. contains the sidebar -->
    @include('layouts.partials.aside')

    <!-- =============================================== -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        {{--<section class="content-header">--}}
            {{--<h1>--}}
                {{--@yield('title')--}}
            {{--</h1>--}}
            {{--<ol class="breadcrumb">--}}
                {{--<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>--}}
                {{--<li><a href="#">Examples</a></li>--}}
                {{--<li class="active">Blank page</li>--}}
            {{--</ol>--}}
        {{--</section>--}}

        <!-- Main content -->
        <section class="content">
            <div class="panel panel-default">
                <div class="panel-body">
                    @yield('content')
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    @include('layouts.partials.footer')

    <div class="control-sidebar-bg"></div>
</div>
<script src="{{ asset('assets/admin/adminLTE/bower_components/jquery.min.js') }}"></script>
<script src="{{ asset('assets/admin/adminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/admin/adminLTE/dist/js/adminlte.min.js') }}"></script>

</body>
</html>
