<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;



class SesiController extends Controller
{
    Function index()
    {
        return view('login');
    }
    Function register()
    {
        return view('register');
    }
   
    function login(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ],
        [
            'email.required' => 'Email Wajib Diisi',
            'password.required' => 'Password Wajib Diisi',
        ]);
        $infologin = [
            'email' => $request->email,
            'password' => $request->password,
            
        ];
        if(Auth::attempt($infologin)){
            if(Auth::user()->role == 'admin'){
                return redirect('/admin');
            }
            elseif(Auth::user()->role == 'kaprodi'){
                return redirect('/kaprodi');
            }
            elseif(Auth::user()->role == 'dosen'){
                return redirect('/dosen');
            }
            elseif(Auth::user()->role == 'mahasiswa'){
                return redirect('/mahasiswa');
            }
        }else{
            return redirect('')->withErrors('Useremail dan Password yang dimasukkan tidak sesuai')->withInput();
        }
    }
    Function logout()
    {
        Auth::logout();
        return redirect('');
    }
    function register_proses(Request $req){
        $req->validate([
            'name'=>'required|min:4',
            'email' => 'required|email|unique:users,email',
            'role'=> 'required|in:admin,kaprodi,dosen,mahasiswa',
            'password'=>'required|min:6'
        ]);
        $data['name']        = $req->name;
        $data['email']       = $req->email;
        $data['password']    = Hash::make($req->password); 
        
        User::create($data);

        $register = [
            'email' => $req->email,
            'password' => $req->password,
            
        ];
        if(Auth::attempt($register)){
            if(Auth::user()->role == 'admin'){
                return redirect('/admin');
            }
            elseif(Auth::user()->role == 'kaprodi'){
                return redirect('/kaprodi');
            }
            elseif(Auth::user()->role == 'dosen'){
                return redirect('/dosen');
            }
            elseif(Auth::user()->role == 'mahasiswa'){
                return redirect('/mahasiswa');
            }
        }else{
            return redirect('')->withErrors('Useremail dan Password yang dimasukkan tidak sesuai')->withInput();
        }
    }

}
