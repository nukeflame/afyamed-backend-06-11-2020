<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\DiseaseCode;
use App\Models\Patient;
use App\Http\Resources\Disease\DiseaseCodeCollection;
use App\Http\Resources\Patient\PatientCollection;

class SearchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function diagnosis(Request $request)
    {
        $search = $request->diagnosis;
        $query = DiseaseCode::where('name', 'like', '%'. $search . '%')->orWhere('code', 'like', '%'. $search . '%')->limit(7)->get();
        return  new DiseaseCodeCollection($query);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function patients(Request $request)
    {
        $search = $request->patients;
        $query = Patient::where('surname', 'like', '%'. $search . '%')->orWhere('id_no', 'like', '%'. $search . '%')->limit(20)->get();
        return  new PatientCollection($query);

    }

   
   
}
