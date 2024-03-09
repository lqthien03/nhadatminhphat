<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer_Support extends Model
{
    use HasFactory;
    public $table = "customer_supports";
    protected $fillable = [
        'tittle',
        'display',
        'content',

    ];
    public $timestamps = false;
}
