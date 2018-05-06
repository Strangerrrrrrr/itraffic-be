<?php

namespace App\Http\Controllers\Api;
use App\Models\Complain;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ComplainController extends Controller
{
    public function store(ComplainRequest $request)
    {

        $complain = Complain::create([
            'illegal_info_id' => $request->illegal_info_id,
            'content' =>  $request->content,
            'picture_1' => $request->picture_1,
            'picture_2' => $request->picture_2,
            'picture_3' => $request->picture_3
        ]);

        return $this->response->created();
    }

}
