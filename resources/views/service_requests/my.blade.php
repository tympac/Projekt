@foreach ($requests as $request)
    <div>
        <strong>#{{ $request->id }}</strong> | {{ $request->created_at }}<br>
        <em>{{ $request->type }}</em> - {{ $request->status }}<br>
        {{ $request->description }}
    </div>
@endforeach
