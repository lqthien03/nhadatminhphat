<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Real_estate extends Model
{
    use HasFactory;
    public $table = "real_estates";
    protected $fillable = [
        'image',
        'tittle',
        'display',
        'content',
        'describe',
        'outstand',
        'seo_id',
    ];
    public $timestamps = false;

    public function seo()
    {
        return $this->belongsTo(Seo::class, 'seo_id', 'id');
    }
}
