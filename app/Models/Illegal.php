<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Auth;

class Illegal extends Model
{
    use Notifiable;
    //
    protected $table = 'illegal_info';

    public function illegalCode () {
        return $this->hasOne('App\Models\IllegalCode', 'id', 'illegal_id');
    }

}
