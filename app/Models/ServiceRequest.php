<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ServiceRequest extends Model
{
    protected $fillable = [
        'client_id', 'serviceman_id', 'status', 'type', 'device_type', 'device_model', 'description'
    ];

    public function client()
    {
        return $this->belongsTo(User::class, 'client_id');
    }

    public function serviceman()
    {
        return $this->belongsTo(User::class, 'serviceman_id');
    }
}
