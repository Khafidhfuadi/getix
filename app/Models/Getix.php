<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Getix extends Model
{
    protected $fillable = [
        'konser',
        'event_organizer',
        'tanggal',
        'jumlah_tiket',
        'jenis_kursi',
        'harga_tiket',
    ];

    use HasFactory;
}
