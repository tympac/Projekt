@extends('layouts.app')

@section('content')
<div class="max-w-5xl mx-auto mt-10 bg-white shadow-md rounded-lg p-6">
    <h1 class="text-3xl font-semibold mb-6 text-gray-800">Aktualne zgłoszenia</h1>

    @if(session('success'))
        <div class="mb-4 p-3 bg-green-200 text-green-800 rounded">
            {{ session('success') }}
        </div>
    @endif

    @if($requests->isEmpty())
        <p class="text-gray-600">Brak aktualnych zgłoszeń.</p>
    @else
        <table class="w-full border-collapse table-auto">
            <thead>
                <tr class="bg-gray-100">
                    <th class="border px-4 py-2 text-left">Numer zgłoszenia</th>
                    <th class="border px-4 py-2 text-left">Data zgłoszenia</th>
                    <th class="border px-4 py-2 text-left">Typ zgłoszenia</th>
                    <th class="border px-4 py-2 text-left">Opis problemu</th>
                    <th class="border px-4 py-2 text-left">Status</th>
                </tr>
            </thead>
            <tbody>
                @foreach($requests as $request)
                    <tr class="hover:bg-gray-50">
                        <td class="border px-4 py-2">{{ $request->id }}</td>
                        <td class="border px-4 py-2">{{ $request->created_at->format('Y-m-d H:i') }}</td>
                        <td class="border px-4 py-2">{{ $request->type }}</td>
                        <td class="border px-4 py-2">{{ Str::limit($request->description, 50) }}</td>
                        <td class="border px-4 py-2">{{ $request->status }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif
</div>
@endsection
