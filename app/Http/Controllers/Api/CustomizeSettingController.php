<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\CustomizeSetting;
use App\Http\Resources\Patient\PatientChartCollection;
use App\User;

class CustomizeSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $c = CustomizeSetting::orderBy('id', 'asc')->get();
        return new PatientChartCollection($c);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = User::findOrFail($request->userId);
        $user->customizes()->sync($request->patientChartsPerms);
        $c = $user->customizes()->orderBy('id', 'asc')->get();
        return new PatientChartCollection($c);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::findOrFail($id);
        $c = $user->customizes()->orderBy('id', 'asc')->get();
        return new PatientChartCollection($c);
    }
}
