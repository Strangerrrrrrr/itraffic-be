<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Admission;
use Illuminate\Http\Request;

class AdmissionController extends Controller
{
    public function store(Request $request)
    {

        $admission = Admission::create([
            'user_id' =>  $this->user()->id,
            'region' => $request->region,
            'booktime' => $request->booktime,
            'exam_room' => $request->exam_room
        ]);

        return $admission;
    }

}


