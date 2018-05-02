<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\DrivingLicense;
use Illuminate\Http\Request;

class DrivingLicenseController extends Controller
{
    public function show(Request $request) {
        $DrivingLicenseInfo = DrivingLicense::where([
            'identity' => $this->user()->identity,
        ])->get();
        return $DrivingLicenseInfo;
    }
}
