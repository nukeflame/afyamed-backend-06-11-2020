<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Http\Resources\User\UserCollection;
use App\Http\Resources\User\User as UserResource;
use App\Models\Staff;
use App\Http\Requests\User\UserRequest;
use Hash;
use Carbon\Carbon;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::with('room_status')->get();
        return new UserCollection($users);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $r)
    {
        $user = new User();
        $user->username = $r->username;
        $user->uniqId = $r->uniqueId;
        $user->email = $r->email;
        $user->id_no = $r->idNo;
        $user->password = Hash::make($r->password);
        $user->acc_level = 1;
        $user->is_active = 1;
        $user->is_super = 0;
        $user->online_status = 0;
        $user->save();
        
        if ($user) {
            $staff = new Staff();
            $staff->othernames = $user->username;
            $staff->surname = $user->username;
            $staff->employee_id = $user->uniqId;
            $staff->department_id = 1;
            $staff->client_id = $r->clientId;
            $staff->is_active = 1;
            $staff->hospital_id = 1;
            $staff->branch_id = $r->branchId;
            $staff->user_id = $user->id;
            $staff->email = $user->email;
            $staff->user_id = $user->id;
            $staff->date_of_joining =  Carbon::now();
            $staff->save();
        }
        
        return  new UserResource($user);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $branch_id = $request->branchId;
        $client_id = $request->clientId;
            
        $userIds = [];
        if ($branch_id > 0) {
            $staff = Staff::where('branch_id', $branch_id)->get();
            foreach ($staff as $stf) {
                $userIds[] = $stf->user_id;
            }
        } else {
            $staff = Staff::where('client_id', $client_id)->get();
            foreach ($staff as $stf) {
                $userIds[] = $stf->user_id;
            }
        }
    
        $users = User::find($userIds);
        return new UserCollection($users);
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
