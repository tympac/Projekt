<?php
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ServiceRequestController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/service-requests/create', [ServiceRequestController::class, 'create'])->name('service_requests.create');
    Route::post('/service-requests', [ServiceRequestController::class, 'store'])->name('service_requests.store');
    Route::get('/service-requests', [ServiceRequestController::class, 'index'])->name('service_requests.index');
    Route::get('/service-requests/history', [ServiceRequestController::class, 'history'])->name('service_requests.history');
    Route::get('/balance', [ServiceRequestController::class, 'balance'])->name('service_requests.balance');
    Route::get('/contact', [ServiceRequestController::class, 'contact'])->name('service_requests.contact');
});

require __DIR__.'/auth.php';
