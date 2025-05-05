@extends('admin.master_layout')
@section('title')
    <title>Ad Listings</title>
@endsection

@section('body-content')
    <section class="crancy-adashboard crancy-show">
        <div class="container">
            <h3>Ad Listings</h3>
            @if(session('success'))
                <div class="alert alert-success">{{ session('success') }}</div>
            @endif 
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Company</th>
                        <th>Type</th>
                        <th>Phone</th>
                        <th>Approval Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($ads as $ad)
                        <tr>
                            <td>{{ $ad->name }}</td>
                            <td>{{ $ad->company_name }}</td>
                            <td>{{ $ad->type }}</td>
                            <td>{{ $ad->phone }}</td>
                            <td>{{ $ad->is_approved ? 'Approved' : 'Pending' }}</td>
                            <td>
                                @if(!$ad->is_approved)
                                    <form action="{{ route('admin.ads.approve', $ad->id) }}" method="POST" style="display:inline;">
                                        @csrf
                                        <button class="btn btn-success btn-sm">Approve</button>
                                    </form>
                                @endif
                                <form action="{{ route('admin.ads.delete', $ad->id) }}" method="POST" style="display:inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this?')">Delete</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </section>
@endsection
