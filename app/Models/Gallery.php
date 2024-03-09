<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use HasFactory;
    public $table = "gallery";
    protected $fillable = [
        'id',
        'image',
        'display',
        'tittle',
        'number',

    ];
    public $timestamps = false;
}
