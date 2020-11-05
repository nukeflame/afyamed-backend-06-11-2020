<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Medic;
use App\Http\Resources\Medic\MedicCollection;

class MedicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $medics =  Medic::latest()->get();
        return  new MedicCollection($medics);
    }

    /**
      * Display the specified resource.
      *
      * @param  int  $id
      * @return \Illuminate\Http\Response
      */
    public function show($id)
    {
        $medic = Medic::find($id);
       
        return response()->json($medic);
    }
}
