<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
<<<<<<< HEAD
use Illuminate\Contracts\Auth\MustVerifyEmail;
=======
>>>>>>> e063689660093de7d665c359bd47efca5e540f04
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

<<<<<<< HEAD
class User extends Authenticatable implements MustVerifyEmail
=======
class User extends Authenticatable
>>>>>>> e063689660093de7d665c359bd47efca5e540f04
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'role'
    ];
<<<<<<< HEAD
   
=======
>>>>>>> e063689660093de7d665c359bd47efca5e540f04

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
<<<<<<< HEAD
    
=======
>>>>>>> e063689660093de7d665c359bd47efca5e540f04
}
