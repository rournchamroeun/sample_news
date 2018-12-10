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
<body class="hold-transition register-page">

<div class="register-box">
  <div class="register-box-body">
    @yield('content')
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->


<script src="{{ asset('assets/admin/adminLTE/bower_components/jquery.min.js') }}"></script>
<script src="{{ asset('assets/admin/adminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/admin/adminLTE/dist/js/adminlte.min.js') }}"></script>

</body>
</html>
