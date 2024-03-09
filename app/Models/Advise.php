<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Advise extends Model
{
    use HasFactory;
    public $table = "advises";
    protected $fillable = [
        'link',
        'image',
        'tittle',
        'display',
        'content',
        'describe',
        'outstand',
        'number',
        'seo_id',
    ];
    public $timestamps = false;

    public function seo()
    {
        return $this->belongsTo(Seo::class, 'seo_id', 'id');
    }
}
