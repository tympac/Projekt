<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = ['name', 'email', 'password', 'role', 'address'];

  

    public function serviceRequests()
{
    return $this->hasMany(ServiceRequest::class, 'client_id');
}

public function assignedRequests()
{
    return $this->hasMany(ServiceRequest::class, 'serviceman_id');
}


}
