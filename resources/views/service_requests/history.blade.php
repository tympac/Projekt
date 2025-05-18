@extends('layouts.app')

@section('content')
<div class="max-w-5xl mx-auto mt-10 bg-white shadow-md rounded-lg p-6">
    <h1 class="text-2xl font-bold mb-6 text-gray-800 text-center">Historia zgłoszeń</h1>

    @if($requests->isEmpty())
        <div class="text-center text-gray-600">
            <p>Brak zrealizowanych zgłoszeń.</p>
        </div>
    @else
        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200 text-sm text-left">
                <thead class="bg-gray-100 text-gray-700 uppercase text-xs">
                    <tr>
                        <th class="px-4 py-2">Numer zgłoszenia</th>
                        <th class="px-4 py-2">Data zgłoszenia</th>
                        <th class="px-4 py-2">Typ zgłoszenia</th>
                        <th class="px-4 py-2">Opis problemu</th>
                        <th class="px-4 py-2">Status</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-gray-100">
                    @foreach($requests as $request)
                        <tr class="hover:bg-gray-50">
                            <td class="px-4 py-2">{{ $request->id }}</td>
                            <td class="px-4 py-2">{{ $request->created_at->format('Y-m-d H:i') }}</td>
                            <td class="px-4 py-2">{{ $request->type }}</td>
                            <td class="px-4 py-2">{{ Str::limit($request->description, 50) }}</td>
                            <td class="px-4 py-2">
                                <span class="inline-block px-2 py-1 text-xs rounded 
                                    @if($request->status === 'Zakończone') bg-green-100 text-green-800 
                                    @elseif($request->status === 'W trakcie') bg-yellow-100 text-yellow-800 
                                    @else bg-gray-200 text-gray-800 
                                    @endif">
                                    {{ $request->status }}
                                </span>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @endif
</div>
@endsection
