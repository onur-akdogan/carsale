@extends('layout')

@section('title')
    <title>{{ __('Car Request List') }}</title>
@endsection

@section('body-content')
    <main>

        <!-- banner-part-start  -->
        <section class="inner-banner">
            <div class="inner-banner-img" style="background-image: url({{ asset($breadcrumb ?? 'path/to/default.jpg') }});">
            </div>
            <div class="container">
                <div class="col-lg-12">
                    <div class="inner-banner-df">
                        <h1 class="inner-banner-taitel">{{ __('Car Request List') }}</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{ __('Car Request List') }}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!-- banner-part-end -->

        <!-- dashboard-part-start -->
        <section class="dashboard">
            <div class="container">
                <div class="row">
                    @include('profile.sidebar')

                    <div class="col-lg-9">
                        <!-- Manage Car Requests -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="manage-car">

                                    <div class="car_list_table">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>{{ __('Title') }}</th>
                                                    <th>{{ __('Brand') }}</th>
                                                    <th>{{ __('Price') }}</th>
                                                    <th>{{ __('Request Dates') }}</th>
                                                    <th>{{ __('Requested By') }}</th>
                                                    <th>{{ __('Featured') }}</th>
                                                    <th>{{ __('Status') }}</th>
                                                    <th>{{ __('Actions') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @forelse ($cars as $car)
                                                    <tr>
                                                        <td>{{ html_decode($car->slug) }}</td>
                                                        <td>{{ $car->car_model ?? 'N/A' }}</td>
                                                        <td>
                                                            @if ($car->offer_price)
                                                                {{ currency($car->offer_price) }}
                                                            @else
                                                                {{ currency($car->regular_price) }}
                                                            @endif
                                                        </td>
                                                        <td>{{ $car->start_date }} - {{ $car->end_date }}</td>
                                                        <td>
                                                            <strong>{{ $car->requester_name }}</strong><br>
                                                            <small>{{ $car->requester_email }}</small><br>
                                                            <small>{{ $car->requester_phone }}</small>
                                                        </td>
                                                        <td>
                                                            @if ($car->is_featured == 'enable')
                                                                <button class="no yes">{{ __('Yes') }}</button>
                                                            @else
                                                                <button class="no">{{ __('No') }}</button>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @if ($car->approved_by_admin == 'approved')
                                                                <button class="no yes">{{ __('Active') }}</button>
                                                            @else
                                                                <button class="no">{{ __('Awaiting') }}</button>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            <div class="actions-btn-item">
                                                                <a href="{{ route('listing', html_decode($car->slug)) }}"
                                                                    class="actions-btn">
                                                                    <span><i class="fa-regular fa-eye"></i></span>
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                @empty
                                                    <tr>
                                                        <td colspan="8" class="text-center">
                                                            {{ __('No Requests Found') }}</td>
                                                    </tr>
                                                @endforelse
                                            </tbody>

                                        </table>
                                    </div>

                                    {{-- Pagination varsa burada gösterilebilir --}}
                                    {{-- {{ $cars->links('listing_paginate') }} --}}

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- dashboard-part-end -->

        @include('profile.logout')

    </main>
@endsection
