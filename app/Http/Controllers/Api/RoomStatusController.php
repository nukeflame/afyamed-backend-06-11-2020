<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\RoomStatus;
use Auth;
use App\Http\Resources\Dep\RoomStatusCollection;
use Carbon\Carbon;
use App\Http\Resources\Dep\RoomStatus as RoomStatusResource;
use App\Models\Staff;
use App\Http\Resources\User\User as UserResource;

class RoomStatusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        $room = RoomStatus::where(['user_id' => $user->id])->latest()->first();
        return new RoomStatusResource($room);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //sign in room
        $room = new RoomStatus();
        $room->user_id = Auth::id();
        $room->room_id = $request->roomId;
        $room->status_id = $request->statusId;
        $room->branch_id = $request->branchId;
        $room->mini_sign_out =  0;
        $room->sign_in_at = Carbon::now();
        $room->save();

        return new RoomStatusResource($room);
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
        $room = RoomStatus::where(['user_id' => $request->userId])->latest()->first();
        //change room status
        if ($request->has('statusId')) {
            $room->status_id = $request->statusId;
            $room->update();
            return new RoomStatusResource($room);
        }
        //sign out room
        if ($request->has('signOut')) {
            $room->room_id =  $request->roomId;
            $room->mini_sign_out =  1;
            $room->sign_out_at = Carbon::now();
            $room->update();
            return new RoomStatusResource($room);
        }
        //switch branch
        if ($request->has('branchRoom')) {
            $staff = Staff::where('user_id', $request->userId)->first();
            $room_data = RoomStatus::where('user_id', $request->userId)->get();
            if ($request->branchId > 0) {
                $staff->main_branch = 0; //false
                $staff->update();
                if (count($room_data) > 0) {
                    $room = RoomStatus::where('user_id', $request->userId)->latest()->first();
                    $room->user_id = $request->userId;
                    $room->branch_id = $request->branchId;
                    $room->room_id =  $request->roomId;
                    $room->status_id = 2;//available
                    $room->sign_in_at = Carbon::now();
                    $room->update();
                } else {
                    $room = new RoomStatus();
                    $room->user_id = $request->userId;
                    $room->branch_id = $request->branchId;
                    $room->room_id =  $request->roomId;
                    $room->status_id = 2;//available
                    $room->sign_in_at = Carbon::now();
                    $room->save();
                }
            } else {
                $staff->main_branch = 1; //main branch
                $staff->update();
                if (count($room_data) > 0) {
                    $room = RoomStatus::where('user_id', $request->userId)->latest()->first();
                } else {
                    $room = new RoomStatus();
                    $room->user_id = $request->userId;
                    $room->branch_id = $staff->branch_id;
                    $room->room_id =  $staff->department_id;
                    $room->status_id = 2;//available
                    $room->sign_in_at = Carbon::now();
                    $room->save();
                    $staff->main_branch = 1;
                    $staff->update();
                }
            }
            return  new RoomStatusResource($room);
        }
    }

    /**
      * Display a listing of the resource.
      *
      * @return \Illuminate\Http\Response
      */
    public function login()
    {
        $auth = Auth::user();
        //set online
        $logins = $auth->logins;
        $counts = str_pad($logins + 1, 6, 0, STR_PAD_LEFT);
        $auth->logins = $counts;
        $auth->online_status = 1; //active
        $auth->update();
        // set room
        $room = new RoomStatus();
        $room->user_id = $auth->id;
        $room->branch_id = $auth->staff->branch_id;
        $room->room_id =  $auth->staff->department_id;
        $room->status_id = 2; //available
        $room->sign_in_at = Carbon::now();
        $room->save();

        return new RoomStatusResource($room);
    }

    /**
      * Display a listing of the resource.
      *
      * @return \Illuminate\Http\Response
      */
    public function logout(Request $request)
    {
        // $auth = Auth::user();
        // //set online
        // $auth->online_status = 0;//inactive
        // $auth->update();
        // // set room
        // $room = new RoomStatus();
        // $room->user_id = $auth->id;
        // $room->branch_id = $auth->staff->branch_id;
        // $room->room_id =  $auth->staff->department_id;
        // $room->status_id = 2;//available
        // $room->sign_in_at = Carbon::now();
        // $room->save();

        // $room = RoomStatus::where('user_id', $auth->id)->orderBy('sign_in_at', 'desc')->first();
        //     $room->sign_out_at =  Carbon::now();
        //     $room->update();
        //     $token = $auth->token();
        //     $token->revoke();
  
        return response()->json($request->all());
        // return new RoomStatusCollection($r);
    }
}
