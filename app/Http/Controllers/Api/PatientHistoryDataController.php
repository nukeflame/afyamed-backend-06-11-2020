<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Patient;
use App\Models\PatientHistoryData;
use Carbon\Carbon;
use App\Http\Resources\Patient\PatientHistoryData as PatientHistoryDataHistory;
use App\Http\Resources\Patient\PatientHistoryDataCollection;
use Illuminate\Support\Arr;

class PatientHistoryDataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $array = Arr::add(['name' => 'Desk'], 'price', 100);
        $decode = json_decode($request->historyValueData);
        

        
        // $array = Arr::add(['name' => 'Desk', 'price' => 100], $decode);

        // $patient = new PatientHistoryData();
        // $patient->patient_history_id  = $request->nameId;
        // $patient->patient_id  = $request->patientId;
        // $patient->date = Carbon::parse($request->date)->now();
        // $patient->medic_id  = $request->medicId;
        // $patient->is_completed  = $request->isCompleted;
        // $patient->location  = $request->location;
        // $patient->history  = $request->historyValueData;
        // $patient->save();

        // return new PatientHistoryDataHistory($patient);
        return response()->json($decode);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $results = [];
        $patientHistory = PatientHistoryData::where('patient_id', $id);
        if (count($patientHistory->get()) > 0) {
            $results = $patientHistory->latest()->get();
            return new PatientHistoryDataCollection($results);
        }
        return response()->json($results);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
