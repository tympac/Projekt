@extends('layouts.app')

@section('content')
<div class="max-w-xl mx-auto mt-10">
    <div class="bg-white shadow-lg rounded-xl p-6">
        <h1 class="text-2xl font-semibold text-gray-800 mb-4">Twoje saldo</h1>

        <div class="flex items-center justify-between bg-yellow-100 border-l-4 border-yellow-500 text-yellow-700 p-4 rounded-lg">
            <span class="text-lg font-medium">Dostępne środki:</span>
            <span class="text-2xl font-bold">{{ number_format($saldo, 2, ',', ' ') }} zł</span>
        </div>

        <div class="mt-6 text-right">
            <a href="{{ route('dashboard') }}" class="inline-block px-4 py-2 bg-gray-200 hover:bg-gray-300 text-gray-800 rounded-lg transition">
                Wróć do panelu
            </a>
        </div>
    </div>
</div>
@endsection
