<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Auth;

class DrivingLicense extends Model
{
    use Notifiable;
    //
    protected $table = 'driving_license';

    protected $primaryKey = 'identity';
    protected $keyType = 'string';

    public function user () {
        return $this->belongsTo('App\Models\User');
    }

}