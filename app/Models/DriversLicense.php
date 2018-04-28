<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Auth;

class license extends Model
{
    use Notifiable;
    //
    protected $table = 'drivers_license';

    public function license () {
        return $this->belongsTo('App\Models\User');
    }

}