<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    function admin()
    {
<<<<<<< HEAD
    
=======
        return redirect('/dosen');
>>>>>>> e063689660093de7d665c359bd47efca5e540f04
        echo "<h5>". Auth :: user()->name ."</h5>" ;
        echo "selamat datang admin";
        echo "<a href='/logout'>logout >></a>";
    }
    function kaprodi()
    {
        echo "<h5>". Auth :: user()->name ."</h5>" ;
        echo "selamat datang kaprodi";
        echo "<a href='/logout'>logout >></a>";
    }
    function dosen()
    {
        echo "<h5>". Auth :: user()->name ."</h5>" ;
        echo "selamat datang dosen";
        echo "<a href='/logout'>logout >></a>";
    }
    function mahasiswa()
    {
        echo "<h5>". Auth :: user()->name ."</h5>" ;
        echo "selamat datang mahasiswa";
        echo "<a href='/logout'>logout >></a>";
    }
}
