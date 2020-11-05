<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Opd;
use Carbon\Carbon;
use App\Http\Resources\Opd\Opd as OpdResource;
use App\Http\Resources\Opd\OpdCollection;
use App\Models\Medication;
use App\Models\Consultation;
use App\Http\Requests\Consultation\ConsultationRequest;
use App\Models\Timeline;
use App\Models\Diagnosis;

class ConsultationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $opd =  Opd::latest()->get();
        return  new OpdResource($opd);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ConsultationRequest $request)
    {
        $opd = new Opd();
        $opd->patient_id = $request->patientId;
        $opd->opd_no = 'OPD/' . str_pad(count(Opd::all()) + 1, 4, "0", STR_PAD_LEFT) . '/'. Carbon::now()->year;
        $opd->appointment_date = Carbon::parse($request->appointDate)->now();
        $opd->medic_id = $request->medicId;
        $opd->bps = $request->bps;
        $opd->bpd = $request->bpd;
        $opd->temprature = $request->temp;
        $opd->weight = $request->weight;
        $opd->height = $request->height;
        $opd->pulse = $request->pulse;
        $opd->resp_rate = $request->respRate;
        $opd->bmi = $request->bmi;
        $opd->sp02 = $request->sp02;
        $opd->save();
        if ($opd) {
            $cons = new Consultation();
            $cons->opd_id =  $opd->id;
            $cons->complaints =  $request->complaints;
            $cons->patient_id =  $opd->patient_id;
            $cons->title =  $request->title;
            $cons->clinical_summary =  $request->summary;
            $cons->save();
            //diagnosis
            if ($request->has('diagnoses')) {
                foreach ($request->diagnoses as $r) {
                    $diag = new Diagnosis();
                    $diag->patient_id = $request->patientId;
                    $diag->consultation_id = $cons->id;
                    $diag->disease_id =  $r['diseaseId'] !== null ? $r['diseaseId'] : null;
                    $diag->disease_code = $r['code'] !== null ? $r['code'] : null;
                    $diag->description = $r['name'];
                    $diag->save();
                }
            }
            //medications
            if ($request->has('medications')) {
                foreach ($request->medications as $m) {
                    $med = new Medication();
                    $med->patient_id = $request->patientId;
                    $med->consultation_id = $cons->id;
                    $med->drug_id = $m['drugId'] !== null ? $m['drugId'] : null;
                    $med->description = $m['name'];
                    $med->save();
                }
            }
        }
       
        return  new OpdResource($opd);
       
        // //timeline
        // $timeline = new Timeline();
        // $timeline->name_type = 'Note';
        // $timeline->medic_id = $request->medicId;
        // $timeline->patient_id = $request->patientId;
        // $timeline->content =  $request->title;
        // // if ($request->summary) {
        // //     $timeline->name_type = 'Clinical Summary';
        // //     $timeline->content = $request->summary;
        // // }
        // // if (count($request->vitals) > 0) {
        // //     $timeline->name_type = 'Vitals';
        // //     $timeline->content = json_decode(['bps' => $request->bps, 'bpd' => $request->bpd]);
        // // }
        // if (count($request->diagnoses) > 0) {
        //     $timeline->name_type = 'Diagnoses';
        //     $timeline->content = json_encode($request->diagnoses, true);
        // }
        // $timeline->save();
        // return response()->json($diag);
        // return  new OpdResource($opd);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $opd = Opd::where('patient_id', $id)->orderBy('created_at', 'desc')->get();
        return new OpdCollection($opd);
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
        $med = Medication::find(1)->consultation;
        return response()->json($med);
    }
}
