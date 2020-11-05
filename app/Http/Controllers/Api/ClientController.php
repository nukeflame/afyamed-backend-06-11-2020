<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Client;
use App\User;
use App\Models\Hospital;
use App\Http\Resources\Client\ClientCollection;
use App\Http\Resources\Client\Client as ClientResource;
use App\Http\Requests\Client\ClientRequest;
use Auth;
use Hash;
use App\Http\Resources\Hospital\Hospital as HospitalResource;
use App\Http\Resources\Hospital\HospitalCollection;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $c = Client::latest()->get();
        return new ClientCollection($c);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ClientRequest $r)
    {
        $hospital = $this->save_client($r);
        return new HospitalResource($hospital);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $c = Client::find($id);
        return new ClientResource($c);
    }  

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ClientRequest $r, $id)
    {
        try {
            $hosp = $this->save_client($r, $id);
            return new HospitalResource($hosp);
        } catch (\Throwable $th) {
            return response()->json($th);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ids = explode(",", $id);

        if (count($ids) > 0) {
            $this->userIds = [];
            //del client
            $client = Client::whereIn('id', $ids)->get();
            foreach ($client as $c) {
                array_push($this->userIds, $c->user_id);
                $c->delete();
            }
            //del client
            $hosp = Hospital::whereIn('client_id', $ids)->get();
            foreach ($hosp as $h) {
                $h->delete();
            }
            //del user
            $users = User::whereIn('id', $this->userIds)->get();
            foreach ($users as $u) {
                $u->delete();
            }

            return new HospitalCollection($hosp);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function save_client($r, $id = null)
    {
        if (!empty($id)) {
            //edit
            $user =  User::findOrFail($r->userId);
            $user->username = strtolower($r->surname);
            $user->password = Hash::make($r->password);
            $user->email = strtolower($r->client_email);
            $user->id_no = $r->id_no;
            $user->is_active = 1;
            $user->acc_level = 1;
            $user->update();

            if ($user) {
                $c =  Client::findOrFail($id);
                $c->surname = ucwords($r->surname);
                $c->other_names = ucwords($r->other_names);
                $c->id_type = $r->id_type;
                $c->user_id = $user->id;
                $c->id_no = $r->id_no;
                $c->email = strtolower($r->client_email);
                $c->phone = $r->phone;
                $c->role = $r->role;
                $c->reg_by = Auth::id();
                $c->update();
    
                //update modules permission
                $c->modules()->sync($r->modulePerms);
            }

            if ($c) {
                $hos = Hospital::where('client_id', $id)->first();
                $hos->hospital_name = 	ucwords($r->hospital_name);
                $hos->hospital_code = 	$r->hospital_code;
                // $hos->hospital_url = 	$r->hospital_url;
                $hos->address = 	$r->address;
                $hos->location = 	$r->location;
                $hos->email = 	strtolower($r->hospital_email);
                $hos->is_active = 	$r->isActive;
                $hos->client_id = 	 $c->id;
                $hos->user_id = 	 $user->id;
                $hos->telephone = 	$r->telephone;
                $hos->completion_status = 	0;
                $hos->update();
            }
        } else {
            $user = new User();
            $user->username = strtolower($r->surname);
            $user->password = Hash::make($r->password);
            $user->email = strtolower($r->client_email);
            $user->id_no = $r->id_no;
            $user->is_active = 1;
            $user->acc_level = 1;
            $user->uniqId = str_pad(count(User::all()) + 1, 4, "0", STR_PAD_LEFT);
            $user->save();
    
            if ($user) {
                $c = new Client();
                $c->surname = ucwords($r->surname);
                $c->other_names = ucwords($r->other_names);
                $c->id_type = $r->id_type;
                $c->user_id = $user->id;
                $c->id_no = $r->id_no;
                $c->email = strtolower($r->client_email);
                $c->phone = $r->phone;
                $c->role = $r->role;
                $c->reg_by = Auth::id();
                $c->save();
    
                //save modules permission
                $c->modules()->attach($r->modulePerms);
            }
            if ($c) {
                $hos = new Hospital();
                $hos->hospital_name = 	ucwords($r->hospital_name);
                $hos->hospital_code = 	$r->hospital_code;
                $hos->hospital_id = 	'AFM/'.str_pad(count(Hospital::all()) + 1, 4, "0", STR_PAD_LEFT);
                // $hos->hospital_url = 	$r->hospital_url;
                $hos->address = 	$r->address;
                $hos->location = 	$r->location;
                $hos->email = 	strtolower($r->hospital_email);
                $hos->is_active = 	$r->isActive;
                $hos->client_id = 	 $c->id;
                $hos->user_id = 	 $user->id;
                $hos->telephone = 	$r->telephone;
                $hos->completion_status = 	0;
                $hos->save();
            }
        }

        return  $hos;
    }
}
