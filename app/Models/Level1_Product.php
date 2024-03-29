<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Level1_Product extends Model
{
    use HasFactory;
    public $table = "level1_products";
    protected $fillable = [
        'image',
        'tittle',
        'outstand',
        'display',
        'seo_id',
        'descrie',
    ];
    // protected $attributes = ['outstand' => 1,];
    public $timestamps = false;

    public function seo()
    {
        return $this->belongsTo(Seo::class, 'seo_id', 'id');
    }
    // public function Level1ChildrentProduct(){
    //     return $this->hasMany(DetailProduct::class, 'level1_product_id');
    // }
    public function Level1ChildrentProduct()
    {
        return $this->hasMany(Level2_Product::class, 'level1_product_id');
    }
}
