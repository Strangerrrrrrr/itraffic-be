<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Illegal;
use App\Models\IllegalCode;
use Illuminate\Http\Request;
// use App\Http\Requests\Api\IllegalRequest;
use App\Transformers\IllegalTransformer;

class IllegalController extends Controller
{
    public function search(Request $request) {
        $illegalInfo = Illegal::where([
            'license' => $request->license,
            'engineID' => $request->engineID,
        ])->with('IllegalCode')->get();
        return $this->response->item($illegalInfo, new IllegalTransformer());
        // $illegalInfo = Illegal::find(1)->illegalCode;
        // return $illegalInfo;
    }
}
