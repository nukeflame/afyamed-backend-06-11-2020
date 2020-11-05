<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Http\Requests\Role\RoleRequest;
use App\Http\Resources\Role\RoleCollection;
use App\Http\Resources\Role\Role as RoleResource;
use App\Models\Hospital;
use Auth;

class GroupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Role::all();
        return new RoleCollection($roles);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RoleRequest $r)
    {
        $role = Role::where('slug', $r->slug)->first();
        if ($role) {
            if (!count($role->hospitals) > 0) {
                $role->hospitals()->attach($r->hospId, ['is_active' => $r->isActive]);
            }
        } else {
            $role = new Role();
            $role->name = $r->role;
            $role->slug = $r->slug;
            $role->save();
            // save to pivot hospitals table
            $role->hospitals()->attach($r->hospId, ['is_active' => $r->isActive]);
        }
        return new RoleResource($role);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $roles = Hospital::find($id)->roles;
        return new RoleCollection($roles);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(RoleRequest $r, $id)
    {
        $role =  Role::findOrFail($id);
        $role->name = $r->role;
        $role->slug = $r->slug;
        $role->update();
        // $role->hospitals()->sync($r->hospId, ['is_active' => $r->isActive]);

        return new RoleResource($role);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $ids = explode(",", $id);
            $staff = Auth::user()->staff;
            $hospital = Hospital::find($staff->hospital_id);
            $hospital->roles()->detach($ids);
            if (count($ids) > 0) {
                $grps = Role::whereIn('id', $ids)->get();
                foreach ($grps as $g) {
                    return new RoleResource($g);
                }
            }
        } catch (\Throwable $th) {
            return response()->json($th);
        }
    }
}
