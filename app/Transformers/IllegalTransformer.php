<?php

namespace App\Transformers;

use App\Models\Illegal;
use League\Fractal\TransformerAbstract;

class IllegalTransformer extends TransformerAbstract
{
    public function transform(Illegal $illegal)
    {
        return [
            'license' => $illegal->license,
            'engineID' => $illegal->engineID,
            'location' => $illegal->location,
            'illegal_id' => $illegal->illegal_id,
            'created_at' => $illegal->created_at->toDateTimeString(),
        ];
    }
}