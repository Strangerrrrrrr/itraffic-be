<?php

namespace App\Http\Controllers\Api;

use App\Models\PublicBoard;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PublicBoardController extends Controller
{
    public function show(Request $request) {
        $news = PublicBoard::paginate(5);
        return $news;
    }

    public function news(Request $request) {
        $news = PublicBoard::find($request->id);
        return $news;
    }
}
