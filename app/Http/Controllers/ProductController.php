<?php

namespace App\Http\Controllers;

use App\Models\Getix;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;


class ProductController extends Controller
{
    public function getAllProduct()
    {
        $product  = Getix::get();

        return response(
            $product
        );
    }

    public function addProduct(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'konser' => 'required|string|max:255',
            'event_organizer' => 'required|string|max:255',
            'tanggal' => 'required|date',
            'jumlah_tiket' => 'required|string|max:255',
            'jenis_kursi' => 'required|int|max:50',
            'harga_tiket' => 'required|int|max:50',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        Getix::create([
            'konser' => $request->konser,
            'event_organizer' => $request->event_organizer,
            'tanggal' => $request->tanggal,
            'jumlah_tiket' => $request->jumlah_tiket,
            'jenis_kursi' => $request->jenis_kursi,
            'harga_tiket' => $request->harga_tiket,
        ]);

        return [
            'message' => 'You have successfully added product'
        ];
    }
}
