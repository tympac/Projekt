<?php
namespace App\Http\Controllers;

use App\Models\ServiceRequest;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Http\Request;

class ServiceRequestController extends Controller
{
    // Formularz zgłoszenia problemu
    public function create()
    {
        return view('service_requests.create');
    }

    // Zapis zgłoszenia do bazy
    public function store(Request $request)
    {
        $request->validate([
            'type' => 'required|string',
            'device_type' => 'nullable|string',
            'device_model' => 'nullable|string',
            'description' => 'required|string',
        ]);

        // Pobierz aktualnego klienta
        $client = Auth::user();

        // Przypisz serwisanta losowo (przykład: pierwszy serwisant w bazie)
        $serviceman = User::where('role', 'employee')->first();

        $serviceRequest = ServiceRequest::create([
            'client_id' => $client->id,
            'serviceman_id' => $serviceman ? $serviceman->id : null,
            'status' => 'nieopłacona',
            'type' => $request->type,
            'device_type' => $request->device_type,
            'device_model' => $request->device_model,
            'description' => $request->description,
        ]);

        return redirect()->route('service_requests.index')->with('success', 'Zgłoszenie zostało wysłane.');
    }

    // Lista otwartych zgłoszeń klienta
    public function index()
    {
        $client = Auth::user();

        $requests = ServiceRequest::where('client_id', $client->id)
            ->where('status', '!=', 'zrealizowane')
            ->orderBy('created_at', 'asc')
            ->get();

        return view('service_requests.index', compact('requests'));
    }

    // Historia zrealizowanych zgłoszeń
    public function history()
    {
        $client = Auth::user();

        $requests = ServiceRequest::where('client_id', $client->id)
            ->where('status', 'zrealizowane')
            ->orderBy('created_at', 'desc')
            ->get();

        return view('service_requests.history', compact('requests'));
    }

    // Widok salda klienta (zakładam, że masz pole saldo w users)
    public function balance()
    {
        $client = Auth::user(); 

        $saldo = $client->saldo ?? 0;

        return view('service_requests.balance', compact('saldo'));
    }

    // Widok kontaktu z firmą - prosta forma czatu
    public function contact()
    {
        return view('service_requests.contact');
    }
}
