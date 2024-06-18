<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    use HasFactory;

     /**
     * Retourne l'usager associé au message
     *
     * @return BelongsTo
     */
    public function user() {
        return $this->belongsTo(User::class);
    }
}
