<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Check;
use Illuminate\Http\Request;

class CheckController extends Controller
{
    public function store(Request $request)
    {
        $check = Check::where([
            'user_id' => $this->user()->id,
            'finish' => 0
        ])->first();
        if (!$check) {
            $check = Check::create([
                'user_id' => $this->user()->id
                // 'name' => $request->name,
                // 'license' => $request->license,
                // 'type' => $request->type,
                // 'book_time' => $request->book_time,
                // 'site' => $request->site,
            ]);
        }
        return $check->id;
    }

    public function storeBasicInfo(Request $request) {
        $checkBasicInfo = Check::where([
            'id' => $request->id,
        ])->first();
        $checkBasicInfo->name = $request->name; 
        $checkBasicInfo->license = $request->license; 
        $checkBasicInfo->type = $request->type; 
        $checkBasicInfo->save();
        return $checkBasicInfo;
    }

    public function storeTimeInfo(Request $request) {
        $checkTimeInfo = Check::where([
            'id' => $request->id,
        ])->first();
        $checkTimeInfo->book_date = $request->book_date; 
        $checkTimeInfo->book_time = $request->book_time; 
        $checkTimeInfo->save();
        return $checkTimeInfo;
    }

    public function storeSiteInfo(Request $request) {
        $checkSiteInfo = Check::where([
            'id' => $request->id,
        ])->first();
        $checkSiteInfo->region = $request->region; 
        $checkSiteInfo->exam_room = $request->exam_room; 
        $checkSiteInfo->save();
        return $checkSiteInfo;
    }

    public function storeFinishInfo(Request $request) {
        $checkFinishInfo = Check::where([
            'id' => $request->id,
        ])->first();
        $checkFinishInfo->finish = true; 
        $checkFinishInfo->save();
        return $checkFinishInfo;
    }

    public function show(Request $request){
        $checkInfo = Check::where([
            'id' => $request->id,
        ])->first();
        return $checkInfo;
    }

    public function showAll(Request $request){
        $checkInfo = Check::where([
            'user_id' => $this->user()->id,
        ])->get();
        return $checkInfo;
    }
}