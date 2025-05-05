@extends('layout')
@section('title')
    <title>Car Rental Services - </title>
    <meta name="title" content="Car Rental Services - ">
    <meta name="description"
        content="Get high-quality car rental listings with  and reach your customers. Discover the exclusive world of vehicle rentals.">
@endsection
@section('title', 'Car Sales - OneClickDrive')
<style>
   footer{
        display: none!important;
    }
</style>
@section('body-content')
    <main>
        <!-- Banner Section -->
        <section class="inner-banner">
            <div class="inner-banner-img" style="background-image: url({{ asset($breadcrumb) }});"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="inner-banner-df">
                            <h1 class="inner-banner-taitel">GET HIGH-QUALITY LISTINGS</h1>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('translate.Home') }}</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Car Rental</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Hero Section -->
        <section class="hero-section" style="background-image: url('{{ asset('assets/images/hero-bg.jpg') }}');">
            <div class="container">
                <div class="hero-content">
                    <h2 class="main-title">GET HIGH-QUALITY LISTINGS</h2>
                    <p class="subtitle">The privileges of car rental</p>
                    <a href="#registration-form" class="cta-button">DISCOVER THE DETAILS</a>
                </div>
            </div>
        </section>

        <!-- Car Listing Section -->
        <section class="car-listing-section py-5">
            <div class="container">
                <div class="row">
                    <!-- Benefits Column -->
                    <div class="col-md-6">
                        <div class="listing-info">
                            <p class="info-text">
                                Join  and benefit from over 1 million page views each month and more than 50,000 quality leads sent to rental companies and brokers worldwide.
                            </p>

                            <ul class="benefits-list">
                                <li>
                                    <span class="icon"> ... </span>
                                    Get leads verified via phone, SMS, and email.
                                </li>
                                <li>
                                    <span class="icon"> ... </span>
                                    Full training provided for your staff to use the CMS with ease.
                                </li>
                                <li>
                                    <span class="icon"> ... </span>
                                    Support from your dedicated Account Manager.
                                </li>
                                <li>
                                    <span class="icon"> ... </span>
                                    Tools and resources to plan your marketing strategy.
                                </li>
                                <li>
                                    <span class="icon"> ... </span>
                                    Create custom content.
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- Registration Form Column -->
                    <div class="col-md-6">
                        <div id="registration-form" class="registration-form card">
                            <div class="card-header">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="kiralama-tab" data-toggle="tab" href="#kiralama"
                                            role="tab" aria-controls="kiralama" aria-selected="true">Car Rental</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="satis-tab" data-toggle="tab" href="#satis" role="tab"
                                            aria-controls="satis" aria-selected="false">Car Sales</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="card-body">
                                <div class="tab-content">
                                    <!-- Kiralama Formu -->
                                    <div class="tab-pane fade show active" id="kiralama" role="tabpanel"
                                        aria-labelledby="kiralama-tab">
                                        <h4 class="form-title">Advertise Your Rental Cars</h4>

                                        <form action="{{ route('vehicle-ad.store') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Your Name</label>
                                                        <input type="text" class="form-control" id="name"
                                                            name="name" placeholder="Enter your name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="company_name">Company Name</label>
                                                        <input type="text" class="form-control" id="company_name"
                                                            name="company_name" placeholder="Enter your company name"
                                                            required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="business_type">Business Type</label>
                                                        <select class="form-control" id="business_type" name="business_type"
                                                            required>
                                                            <option value="">Select</option>
                                                            <option value="personal">Individual / Company</option>
                                                            <option value="rental">Car Rental</option>
                                                            <option value="other">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="fleet_size">Fleet Size</label>
                                                        <select class="form-control" id="fleet_size" name="fleet_size"
                                                            required>
                                                            <option value="">Select</option>
                                                            <option value="small">5-10 vehicles</option>
                                                            <option value="medium">11-20 vehicles</option>
                                                            <option value="large">21+ vehicles</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phone">Contact Number</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text">+971</span>
                                                            </div>
                                                            <input type="tel" class="form-control" id="phone"
                                                                name="phone" placeholder="Phone number" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Email Address</label>
                                                        <input type="email" class="form-control" id="email"
                                                            name="email" placeholder="Enter your email address"
                                                            required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">Country</label>
                                                        <select class="form-control" id="country" name="country"
                                                            required>
                                                            <option value="">Select</option>
                                                            <option value="UAE">UAE</option>
                                                            <option value="TR">Turkey</option>
                                                            <option value="other">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="city">City</label>
                                                        <select class="form-control" id="city" name="city"
                                                            required>
                                                            <option value="">Select</option>
                                                            <option value="Dubai">Dubai</option>
                                                            <option value="Istanbul">Istanbul</option>
                                                            <option value="Ankara">Ankara</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group mt-4">
                                                <button type="submit" class="btn btn-primary btn-block">SUBMIT</button>
                                            </div>

                                            <div class="form-text small mt-2">
                                                You will see details about OneClickDrive's data collection policy when you register and become a member.
                                            </div>
                                        </form>
                                    </div>

                                    <!-- Satış Formu -->
                                    <div class="tab-pane fade" id="satis" role="tabpanel"
                                        aria-labelledby="satis-tab">
                                        <h4 class="form-title">Advertise Your Cars for Sale</h4>

                                        <form action="{{ route('vehicle-ad.store') }}" method="POST">
                                            @csrf
                                            <!-- Add fields here similarly -->
                                            <div class="form-group mt-4">
                                                <button type="submit" class="btn btn-primary btn-block">SUBMIT</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Future Section -->
        <section class="future-section py-5 bg-light">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-5">
                        <div class="city-image">
                            <img src="{{ asset('assets/images/city-skyline.jpg') }}" alt="City skyline"
                                class="img-fluid rounded shadow">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="future-content pl-md-4">
                            <h2 class="section-title">Shaping the Future of Car Rentals</h2>
                            <p class="section-text">
                                 is not just a marketplace—we're shaping the future of car rentals. As we continue expanding our platform and digital ecosystem, we welcome strategic collaborations with industry leaders and investors who share our vision. Contact us to explore partnership opportunities.
                            </p>
                            <a href=" " class="btn btn-outline-primary">CONTACT US</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Why Choose Section -->
        <section class="why-choose-section py-5">
            <div class="container">
                <h2 class="section-title text-center mb-4">WHY JOIN ?</h2>

                <div class="why-choose-content text-center mb-5">
                    <p>Partner with one of the world’s largest car rental marketplaces. Our car rental websites and apps are available on Android and iOS, and direct customers to you when they plan a trip to your city.</p>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-4">
                        <div class="feature-card h-100 p-4 border rounded shadow-sm">
                            <div class="feature-icon mb-3">
                                <img src="{{ asset('assets/images/calendar-icon.png') }}" alt="Calendar" width="60">
                            </div>
                            <h3 class="feature-title">Car Rental Marketing</h3>
                            <p class="feature-text">
                                 is a new rental platform for car rental and sharing services. We offer a comprehensive car rental marketing plan to help you gain new customers and reach budget-conscious users.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="feature-card h-100 p-4 border rounded shadow-sm">
                            <div class="feature-icon mb-3">
                                <img src="{{ asset('assets/images/user-icon.png') }}" alt="User" width="60">
                            </div>
                            <h3 class="feature-title">High-Quality Leads</h3>
                            <p class="feature-text">
                                Gain real leads from users searching in your area and stating their specific needs. Search by rental type, appearance, size, with or without driver. Advanced filters are available for vehicle models.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonial Section -->
        <section class="testimonial-section py-5 bg-light">
            <div class="container">
                <h2 class="section-title text-center mb-4">OUR AD EXAMPLES</h2>
                <div class="testimonial-display text-center">
                    <img src="{{ asset('assets/images/ad-example.png') }}" alt="Ad examples"
                        class="img-fluid rounded shadow">
                </div>
            </div>
        </section>
    </main>
@endsection
