<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Change;
use Illuminate\Http\Request;
// use App\Http\Controllers\Controller;

class ChangeController extends Controller
{
    public function store(Request $request)
    {
        $change = Change::create([
            'name' => $request->name,
            'identity' => $request->identity,
            'vehicle_type' => $request->vehicle_type,
            'phone' => $request->phone
        ]);
        return $change;
    }

    public function show(Request $request){
        $changeInfo = Change::where([
            'identity' => $this->user()->identity,
        ])->first();
        return $changeInfo;
    }
}
