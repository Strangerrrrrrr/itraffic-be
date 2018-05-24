<?php

namespace App\Models;

use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Auth;

class User extends Authenticatable implements JWTSubject
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    // protected $fillable = [
    //     'name', 'password', 'phone', 'real_name', 'identity'
    // ];

    // protected $table = "users";

    protected $guarded = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];

    public $timestamps = true;

    // Rest omitted for brevity

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }
    public function driversLicense () {
        return $this->hasOne('App\Models\DriversLicense', 'identity', 'identity');
    }
    public function drivingLicense () {
        return $this->hasmany('App\Models\DrivingLicense', 'identity', 'identity');
    }

    public function admission () {
        return $this->hasOne('App\Models\Admission');
    }
    public function change () {
        return $this->hasOne('App\Models\Change');
    }
}
