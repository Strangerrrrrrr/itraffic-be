<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Complain;
use Illuminate\Http\Request;
// use App\Http\Controllers\Controller;

class ComplainController extends Controller
{
    public function store(Request $request)
    {
        $complain_image = $request->file('complain_image')->store('complain_image');
        $complain = Complain::create([
            'illegal_info_id' => $request->illegal_info_id,
            'content' =>  $request->content,
            'picture_1' => $complain_image,
            'picture_2' => $request->picture_2,
            'picture_3' => $request->picture_3,
            'status' => '申诉中',
        ]);

        return $complain;
    }

    public function show(Request $request) {
        $complain = Complain::where([
            'illegal_info_id' => $request->illegal_info_id,
        ])->first();
        return $complain;
    }

    public function destroy ($id) {
        $complain = Complain::find($id);
        $complain->delete();
        return $complain;
    }
}
