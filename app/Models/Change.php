<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Auth;

class Change extends Model
{
    use Notifiable;
    
    protected $table = 'change_license';

    protected $guarded = [];

    public function user () {
      return $this->belongsTo('App\Models\User');
    }
}