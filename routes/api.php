<?php

use Illuminate\Http\Request;

Route::get('posts', function() {
    $data = \App\Post::all();
    return response()->json($data);
})->name('api.posts.all');

Route::get('posts/{id}', function($id) {
    $data = \App\Post::find($id);
    return response()->json($data);
})->name('api.posts.id');
