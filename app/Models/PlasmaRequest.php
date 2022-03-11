<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlasmaRequest extends Model
{
    use HasFactory;

    protected $fillable = [
        'rname',
        'gender',
        'age',
        'blood_group',
        'positive_date',
        'negative_date',
        'state_id',
        'city_id',
        'phone',
    ];
}
