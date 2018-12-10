<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'name'
    ];

    public static function getCategoryList (){

        $arr = Category::pluck('name', 'id')->toArray();
        return $arr;
    }
}
