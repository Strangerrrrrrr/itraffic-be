<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\DriversLicense;
use Illuminate\Http\Request;

class DriversLicenseController extends Controller
{
    public function show(Request $request) {
        $DriversLicenseInfo = DriversLicense::where([
            'identity' => $this->user()->identity,
        ])->first();
        return $DriversLicenseInfo;
    }

    public function address(Request $request) {
        $DriversLicenseInfo = DriversLicense::where([
            'identity' => $this->user()->identity,
        ])->first();
        $DriversLicenseInfo->address = $request->address;
        $DriversLicenseInfo->save();
        return $DriversLicenseInfo;
    }

    public function deduct(Request $request) {
        $DriversLicenseInfo = DriversLicense::where([
            'identity' => $this->user()->identity,
        ])->first();
        $DriversLicenseInfo->grade = $DriversLicenseInfo->grade - $request->grade;
        $DriversLicenseInfo->save();
        return $DriversLicenseInfo;
    }
}