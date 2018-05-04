<?php

namespace App\Http\Controllers\Api;

use App\Models\ExamCenter;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ExamCenterController extends Controller
{
    public function search(Request $request) {
        $ExamCenterInfo = ExamCenter::where([
            'region' => $request->region
        ])->get();
        return $ExamCenterInfo;
    }
}
