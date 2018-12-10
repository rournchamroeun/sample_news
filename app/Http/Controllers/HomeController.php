<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('permission:home');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['countPost'] = Post::all()->where('user_id', Auth::id())->count();
        $data['totalPost'] = Post::all()->count();
        $data['countUser'] = Category::all()->count();
        $data['countCategory'] = Category::all()->count();
        return view('home', $data);
    }
}
