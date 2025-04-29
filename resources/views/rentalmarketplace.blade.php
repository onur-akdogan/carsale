@extends('layout')
@section('title')
    <title>Araba Kiralama Hizmetleri - </title>
    <meta name="title" content="Araba Kiralama Hizmetleri - ">
    <meta name="description"
        content=" ile yüksek kaliteli araba kiralama ilanları elde edin ve müşterilerinize ulaşın. Araç kiralamanın ayrıcalıklı dünyasını keşfedin.">
@endsection
@section('title', 'Araba Satışı - OneClickDrive')
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
                            <h1 class="inner-banner-taitel">YÜKSEK KALİTELİ İLANLAR ELDE EDİN</h1>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('translate.Home') }}</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Araba Kiralama</li>
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
                    <h2 class="main-title">YÜKSEK KALİTELİ İLANLAR ELDE EDİN</h2>
                    <p class="subtitle">Araba kiralamanın ayrıcalıkları</p>
                    <a href="#registration-form" class="cta-button">DETAYLARI KEŞFEDIN</a>
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
                                Dünyanın her yerindeki araç kiralama şirketlerine ve komisyonculara gönderilen 50.000'den
                                fazla kaliteli potansiyel müşteri ile her ay 1 milyondan fazla sayfa görüntülemesinden kâr
                                elde etmek için 'a katılın.
                            </p>

                            <ul class="benefits-list">
                                <li>
                                    <span class="icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <circle cx="12" cy="12" r="12" fill="#FF6B00" />
                                            <path d="M8 12L10.5 15L16 9" stroke="white" stroke-width="2" />
                                        </svg>
                                    </span>
                                    Telefon, SMS ve e-posta yoluyla doğrulanan potansiyel müşteriler edinin.
                                </li>
                                <li>
                                    <span class="icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <circle cx="12" cy="12" r="12" fill="#FF6B00" />
                                            <path d="M8 12L10.5 15L16 9" stroke="white" stroke-width="2" />
                                        </svg>
                                    </span>
                                    Personelinize CMS'yi kullanmanın kolaylığı için sağlanan tam eğitim.
                                </li>
                                <li>
                                    <span class="icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <circle cx="12" cy="12" r="12" fill="#FF6B00" />
                                            <path d="M8 12L10.5 15L16 9" stroke="white" stroke-width="2" />
                                        </svg>
                                    </span>
                                    Özel Hesap Yöneticinizden yardım.
                                </li>
                                <li>
                                    <span class="icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <circle cx="12" cy="12" r="12" fill="#FF6B00" />
                                            <path d="M8 12L10.5 15L16 9" stroke="white" stroke-width="2" />
                                        </svg>
                                    </span>
                                    Pazarlama stratejinizi planlamak için araçlar ve kaynaklar.
                                </li>
                                <li>
                                    <span class="icon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <circle cx="12" cy="12" r="12" fill="#FF6B00" />
                                            <path d="M8 12L10.5 15L16 9" stroke="white" stroke-width="2" />
                                        </svg>
                                    </span>
                                    Özel içerik oluşturun.
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
                                            role="tab" aria-controls="kiralama" aria-selected="true">Araç Kiralama</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="satis-tab" data-toggle="tab" href="#satis"
                                            role="tab" aria-controls="satis" aria-selected="false">Araç Satış</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="card-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="kiralama" role="tabpanel"
                                        aria-labelledby="kiralama-tab">
                                        <h4 class="form-title">Kiralık Araçlarınızı Reklamlandırın</h4>

                                        <form action=" " method="POST">
                                            @csrf

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Adınız</label>
                                                        <input type="text" class="form-control" id="name"
                                                            name="name" placeholder="Adınızı giriniz" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="company_name">Şirket Adı</label>
                                                        <input type="text" class="form-control" id="company_name"
                                                            name="company_name" placeholder="Şirketinizin adını girin"
                                                            required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="business_type">İş Tipi</label>
                                                        <select class="form-control" id="business_type"
                                                            name="business_type" required>
                                                            <option value="">Seçiniz</option>
                                                            <option value="personal">Şahıs / Şirket</option>
                                                            <option value="rental">Araç Kiralama</option>
                                                            <option value="other">Diğer</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="fleet_size">Filo Büyüklüğü</label>
                                                        <select class="form-control" id="fleet_size" name="fleet_size"
                                                            required>
                                                            <option value="">Seçiniz</option>
                                                            <option value="small">5-10 araç</option>
                                                            <option value="medium">11-20 araç</option>
                                                            <option value="large">21+ araç</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phone">İletişim Numarası</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text">+971</span>
                                                            </div>
                                                            <input type="tel" class="form-control" id="phone"
                                                                name="phone" placeholder="Telefon numarası" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">E-posta Adresi</label>
                                                        <input type="email" class="form-control" id="email"
                                                            name="email" placeholder="E-posta adresinizi girin"
                                                            required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="country">Ülke</label>
                                                        <select class="form-control" id="country" name="country"
                                                            required>
                                                            <option value="">Seçiniz</option>
                                                            <option value="UAE">UAE</option>
                                                            <option value="TR">Türkiye</option>
                                                            <option value="other">Diğer</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="city">Şehir</label>
                                                        <select class="form-control" id="city" name="city"
                                                            required>
                                                            <option value="">Seçiniz</option>
                                                            <option value="Dubai">Dubai</option>
                                                            <option value="Istanbul">Istanbul</option>
                                                            <option value="Ankara">Ankara</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group mt-4">
                                                <button type="submit" class="btn btn-primary btn-block">GÖNDER</button>
                                            </div>

                                            <div class="form-text small mt-2">
                                                'ın veri toplama amacı ile ilgili ayrıntılı bilgileri görmek
                                                üzere kaydolduğunuzda ve üye olduğunuzda göreceksiniz.
                                            </div>
                                        </form>
                                    </div>

                                    <div class="tab-pane fade" id="satis" role="tabpanel"
                                        aria-labelledby="satis-tab">
                                        <h4 class="form-title">Satılık Araçlarınızı Reklamlandırın</h4>

                                        <form action="" method="POST">
                                            @csrf
                                            <!-- Similar form fields for car sales can be added here -->
                                            <div class="form-group mt-4">
                                                <button type="submit" class="btn btn-primary btn-block">GÖNDER</button>
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
                            <h2 class="section-title">Araç kiralamanın geleceğini şekillendirmek</h2>
                            <p class="section-text">
                                , sadece bir pazar yeri değil—araç kiralamanın geleceğini şekillendiriyoruz. Platformumuzu
                                ve dijital ekosistemimizi genişletmeye devam ederken, vizyonumuzu paylaşan sektör liderleri
                                ve yatırımcılarla stratejik işbirliklerine açığız. Ortaklık fırsatlarını keşfetmekle
                                ilgileniyorsanız, bize ulaşın.
                            </p>
                            <a href=" " class="btn btn-outline-primary">BİZİMLE İLETİŞİME GEÇİN</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Why Choose Section -->
        <section class="why-choose-section py-5">
            <div class="container">
                <h2 class="section-title text-center mb-4">NEDEN 'A KATILIN?</h2>

                <div class="why-choose-content text-center mb-5">
                    <p>Dünyanın en büyük araç kiralama pazarlarından biriyle ortak olun. Araç kiralama web sitelerimiz ve
                        uygulamalarımız Android ve iOS cihazlarda mevcuttur, kullanıcı şehrinize bir gezi planladığında size
                        müşteri olarak yönlendirilmektedir.</p>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-4">
                        <div class="feature-card h-100 p-4 border rounded shadow-sm">
                            <div class="feature-icon mb-3">
                                <img src="{{ asset('assets/images/calendar-icon.png') }}" alt="Calendar" width="60">
                            </div>
                            <h3 class="feature-title">Araç Kiralama Pazarlaması</h3>
                            <p class="feature-text">
                                , araç kiralama ve paylaşım hizmetleri için yeni bir kiralama platformudur. Yeni müşteriler
                                edinmeniz ve ekonomik planlama yapan kullanıcılara ulaşmanız için kapsamlı bir araç kiralama
                                pazarlama planı sunuyoruz.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="feature-card h-100 p-4 border rounded shadow-sm">
                            <div class="feature-icon mb-3">
                                <img src="{{ asset('assets/images/user-icon.png') }}" alt="User" width="60">
                            </div>
                            <h3 class="feature-title">Yüksek Kaliteli Müşteri Adayları</h3>
                            <p class="feature-text">
                                Bölgenizde arama yapan ve belirli taleplerini belirten gerçek müşteri adayları
                                edinebilirsiniz. Araç kiralama hizmeti, dış görünüm, büyüklük, sürücülü veya şoförlü gibi
                                özelliklere göre arama yapabilirsiniz. Taşıt modelleri için kapsamlı ayar seçenekleri
                                mevcuttur.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonial Section -->
        <section class="testimonial-section py-5 bg-light">
            <div class="container">
                <h2 class="section-title text-center mb-4">İLAN ÖRNEKLERİMİZ</h2>
                <div class="testimonial-display text-center">
                    <img src="{{ asset('assets/images/ad-example.png') }}" alt="İlan örnekleri"
                        class="img-fluid rounded shadow">
                </div>
            </div>
        </section>
    </main>
@endsection
