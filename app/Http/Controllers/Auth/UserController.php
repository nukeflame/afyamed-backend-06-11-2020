<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\HasPermission;
use App\Http\Resources\User\User as UserResource;
use Auth;
use Illuminate\Http\Request;
use App\User;
use Hash;
use Event;
use  App\Events\SettingsEvents;
use App\Http\Resources\User\NotificationCollection;
use App\Events\TestEvent;
use App\Events\PrivateComplete;
use App\Models\Patient;
use App\Notifications\TestNotification;
use Notification;

class UserController extends Controller
{
    use HasPermission;

    public function index()
    {
        $user = Auth::user();
        return new UserResource($user);
    }

    public function check_password(Request $r)
    {
        $user =  User::findOrFail($r->userId);
        $result = Hash::check($r->password, $user->password);

        if ($result) {
            return response()->json(['result' => true], 200);
        } else {
            return response()->json(['error' => 'Invalid password, Try again'], 422);
        }
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function get_user_no()
    {
        $unique =  'EPS/' . str_pad(count(User::all()) + 1, 6, "0", STR_PAD_LEFT);
        return  response()->json($unique);
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
        $user = User::findOrFail($id);
        if ($r->accessLevel) {
            if ($r->value == 'adminAccess') {
                $user->acc_level = 2;
            } elseif ($r->value == 'employeeAccess') {
                $user->acc_level = 1;
            } elseif ($r->value == 'patientAccess') {
                $user->acc_level = 0;
            }
            $user->update();
            return new UserResource($user);
        }

        if ($r->isActive && Auth::id() !== $id) {
            if ($r->value == 'active') {
                $user->is_active = 2;
            } elseif ($r->value == 'pending') {
                $user->is_active = 1;
            } elseif ($r->value == 'blocked') {
                $user->is_active = 0;
            }

            $user->update();
            $resource =  new UserResource($user);
            // event(new SettingsEvents($resource));
            return $resource;
        }
    }

    // ...
    public function notifications()
    {
        $notf = Auth::user()->notifications()->limit(100)->get();
        return new NotificationCollection($notf);
    }

    // ...
    public function unread_notifications()
    {
        $notf = Auth::user()->unreadNotifications()->limit(100)->get();
        return new NotificationCollection($notf);
    }

    public function notifications_clear()
    {
        $notf = Auth::user()->notifications()->delete();
        if (!$notf) {
            return response()->json(false);
        }
        return response()->json(true);
    }

    // ...
    public function mark_as_read()
    {
        $notf = Auth::user()->unreadNotifications()->update(['read_at' => now()]);
        if (!$notf) {
            return response()->json(false);
        }
        return response()->json(true);
    }

    public function click()
    {
        $patient = Patient::find(1);
        $details = [
            'greeting' => 'Hi Artisan',
            'body' => 'This is our example notification tutorial',
            'thanks' => 'Thank you for visiting codechief.org!',
        ];

        $user = User::find(1);

        // event(new PrivateComplete($user));
        broadcast(new TestEvent($details))->toOthers();

        // Notification::send(Auth::user(), new TestNotification($patient));
        // Auth::user()->notify(new TestNotification($patient));
       
        return response()->json($details);
    }
}
