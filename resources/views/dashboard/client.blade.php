@extends('layouts.app')

@section('content')
<div class="max-w-4xl mx-auto mt-10 bg-white shadow-lg rounded-lg p-8">
    <h1 class="text-3xl font-semibold text-gray-800 mb-6 text-center">Panel Klienta</h1>

    <ul class="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <li>
            <a href="{{ route('service_requests.create') }}"
               class="block w-full bg-blue-600 hover:bg-blue-700 text-white text-center py-3 rounded-lg transition duration-200">
               Zgłoś problem techniczny
            </a>
        </li>
        <li>
            <a href="{{ route('service_requests.index') }}"
               class="block w-full bg-indigo-600 hover:bg-indigo-700 text-white text-center py-3 rounded-lg transition duration-200">
               Zobacz swoje zgłoszenia
            </a>
        </li>
        <li>
            <a href="{{ route('service_requests.history') }}"
               class="block w-full bg-green-600 hover:bg-green-700 text-white text-center py-3 rounded-lg transition duration-200">
               Historia zgłoszeń
            </a>
        </li>
        <li>
            <a href="{{ route('service_requests.balance') }}"
               class="block w-full bg-yellow-500 hover:bg-yellow-600 text-white text-center py-3 rounded-lg transition duration-200">
               Płatności
            </a>
        </li>
        <li class="col-span-1 sm:col-span-2">
            <a href="{{ route('service_requests.contact') }}"
               class="block w-full bg-gray-600 hover:bg-gray-700 text-white text-center py-3 rounded-lg transition duration-200">
               Kontakt przez czat
            </a>
        </li>
    </ul>
</div>
@endsection
