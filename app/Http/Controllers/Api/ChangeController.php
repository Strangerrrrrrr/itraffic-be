<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Change;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ChangeController extends Controller
{
    public function store(Request $request)
    {
        $change = change::create([
            'identity' => $request->identity
        ]);
        return $change;
    }
}
