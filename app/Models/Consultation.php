<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Consultation extends Model
{
    use HasFactory;
    public $table = "consultations";
    protected $fillable = [
        'tittle',
        'display',
        'content',

    ];
    public $timestamps = false;
}
