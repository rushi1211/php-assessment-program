<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Donor extends Model
{
    use HasFactory;

    protected $fillable = [
        'dname',
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
