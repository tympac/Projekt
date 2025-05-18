@extends('layouts.app')

@section('content')
<div class="max-w-2xl mx-auto mt-10 bg-white shadow-md rounded-lg p-8">
    <h1 class="text-2xl font-bold mb-6 text-center text-gray-800">Zgłoś problem techniczny</h1>

    @if(session('success'))
        <div class="bg-green-100 text-green-800 px-4 py-2 rounded mb-4">
            {{ session('success') }}
        </div>
    @endif

    <form method="POST" action="{{ route('service_requests.store') }}" class="space-y-4">
        @csrf

        <div>
            <label class="block text-gray-700 font-semibold mb-1">Typ zgłoszenia:</label>
            <select name="type" required class="w-full border border-gray-300 rounded px-3 py-2">
                <option value="Uszkodzenie mechaniczne">Uszkodzenie mechaniczne</option>
                <option value="Problem z uruchomieniem">Problem z uruchomieniem</option>
                <option value="Problem z oprogramowaniem">Problem z oprogramowaniem</option>
            </select>
        </div>

        <div>
            <label class="block text-gray-700 font-semibold mb-1">Typ urządzenia (opcjonalnie):</label>
            <input type="text" name="device_type" class="w-full border border-gray-300 rounded px-3 py-2" placeholder="Np. Laptop, Telefon">
        </div>

        <div>
            <label class="block text-gray-700 font-semibold mb-1">Model urządzenia (opcjonalnie):</label>
            <input type="text" name="device_model" class="w-full border border-gray-300 rounded px-3 py-2" placeholder="Np. Lenovo ThinkPad X1">
        </div>

        <div>
            <label class="block text-gray-700 font-semibold mb-1">Opis problemu:</label>
            <textarea name="description" required rows="4" class="w-full border border-gray-300 rounded px-3 py-2" placeholder="Opisz szczegóły problemu..."></textarea>
        </div>

        <div class="text-right">
            <button type="submit" class="bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700 transition">
                Wyślij zgłoszenie
            </button>
        </div>
    </form>
</div>
@endsection
