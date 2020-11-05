<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\Queue\QueueCollection;
use App\Models\Queue;
use App\Models\Staff;
use App\User;
use Auth;
use Carbon\Carbon;
use  App\Http\Resources\Queue\Queue as QueueResource;
use App\Notifications\PatientNotification;
use App\Notifications\TaskComplete;
use App\Events\PrivateComplete;

class QueueController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $q = Queue::whereDate('created_at', Carbon::today())->latest()->get();
        return new QueueCollection($q);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $que = new Queue();
        $que->patient_id = $request->patientId;
        $que->queue_no = str_pad(count(Queue::all()) + 1, 4, "0", STR_PAD_LEFT);
        $que->patient_name = $request->surname . ' '. $request->otherNames;
        $que->timestamp_in =  Carbon::now();
        $que->from = $request->from;
        $que->to = $request->to;
        $que->scheme_id = $request->scheme;
        $que->clinic_id = $request->clinic;
        $que->note = $request->note;
        $que->is_emergency = $request->isEmergency;
        $que->queued_by = auth()->user()->id;
        $que->save();

        // $user = Staff::where('user_id', auth()->user()->id)->first();
        // $user_branch = $user->branch_id;
        // $branch =
        // foreach ($queue_notf as $queu) {
        //     return response()->json($queu->user);
        // }

        // $user = Auth::user();
        // $user->notify(new PatientNotification($que));
        // find accountant
        // $users = Role::find(4)->users;
        // if (count($users) > 0) {
        //     // send notification to cashiers
        //     Notification::send($users, new TestNotification($patient));
        // }

        return new QueueResource($que);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $q = Queue::whereDate('created_at', Carbon::today())->where('to', $id)->latest()->get();
        return new QueueCollection($q);
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
