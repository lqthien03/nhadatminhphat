<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Footer extends Model
{
    use HasFactory;
    public $table = "footers";
    protected $fillable = [
        'image',
        'tittle',
        'display',
        'content',
    ];
    public $timestamps = false;
}