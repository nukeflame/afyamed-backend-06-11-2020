<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\PermCategory;
use App\Models\PermGroup;
use App\Models\Role;
use App\Http\Resources\Perm\PermissionCollection as PermCollection;
use Auth;
use App\Models\Client;

class PermGroupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $perm = PermGroup::all();
        return new PermCollection($perm);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $modules = Client::find($id)->modules;
        $mods = ['general'];//default module 'general'

        foreach ($modules as $module) {
            array_push($mods, $module->slug);
        }
        
        $perm_group = PermGroup::whereIn('slug', $mods)->get();
        return new PermCollection($perm_group);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $r, $id)
    {
        $role = Role::findOrFail($id);
        $cat = PermCategory::findOrFail($r->catId);
        $checked = $r->checked;
        
        if ($r->value === 'canView') {
            if ($checked) {
                $role->permissions()->attach($cat->id, ['hosp_branch_id' => $r->hospBranchId, 'can_view' => $checked]);
            } else {
                $role->permissions()->detach($cat->id, ['hosp_branch_id' => $r->hospBranchId, 'can_view' => $checked]);
            }
        }
        if ($r->value === 'canCreate') {
            if ($checked) {
                $role->permissions()->attach($cat->id, ['hosp_branch_id' => $r->hospBranchId, 'can_create' => $checked]);
            } else {
                $role->permissions()->detach($cat->id, ['hosp_branch_id' => $r->hospBranchId, 'can_create' => $checked]);
            }
        }
        if ($r->value === 'canEdit') {
            if ($checked) {
                $role->permissions()->attach($cat->id, ['hosp_branch_id' => $r->hospBranchId, 'can_edit' => $checked]);
            } else {
                $role->permissions()->detach($cat->id, ['hosp_branch_id' => $r->hospBranchId, 'can_edit' => $checked]);
            }
        }
        if ($r->value === 'canDelete') {
            if ($checked) {
                $role->permissions()->attach($cat->id, ['hosp_branch_id' => $r->hospBranchId, 'can_delete' => $checked]);
            } else {
                $role->permissions()->detach($cat->id, ['hosp_branch_id' => $r->hospBranchId, 'can_delete' => $checked]);
            }
        }

        return response()->json($role->permissions);
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
