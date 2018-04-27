<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IllegalCode extends Model
{
    //
    protected $table = "illegal_code";

    public $timestamps = false;

    public function illegal() {
        return $this->belongsTo('App\Models\Illegal');
    }
}
