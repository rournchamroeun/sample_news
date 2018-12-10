@extends('layouts.app')
@section('title', 'Home')
@section('content')
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>{{ $countCategory }}</h3>
                    <p>Category</p>
                </div>
                <div class="icon" style="top: 0;">
                    <i class="fa fa-list-alt"></i>
                </div>
                <a href="{{ route('categories.index') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
                <div class="inner">
                    <h3>{{ $countPost }}</h3>

                    <p>Mine Posts</p>
                </div>
                <div class="icon" style="top: 0;">
                    <i class="fa fa-newspaper-o"></i>
                </div>
                <a href="{{ route('posts.index') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>{{ $countUser }}</h3>

                    <p>User Registrations</p>
                </div>
                <div class="icon" style="top: 0;">
                    <i class="ion ion-person-add"></i>
                </div>
                <a href="{{ route('users.index') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>
@endsection
