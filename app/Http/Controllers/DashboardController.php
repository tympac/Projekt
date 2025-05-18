<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $user = Auth::user();


        switch ($user->role) {
            case 'admin':
                return view('dashboard.admin');
            case 'employee':
                return view('dashboard.employee');
            default:
                return view('dashboard.client');
        }
    }
}
