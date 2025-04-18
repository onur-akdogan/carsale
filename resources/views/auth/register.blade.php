@extends('layout')
@section('title')
    <title>{{ __('translate.Sign Up') }}</title>
@endsection

@section('body-content')

<main>
    <!-- banner-part-start  -->

    <section class="inner-banner">
    <div class="inner-banner-img" style=" background-image: url({{ asset($breadcrumb) }}) ;"></div>
        <div class="container">
        <div class="col-lg-12">
            <div class="inner-banner-df">
                <h1 class="inner-banner-taitel">{{ __('translate.Sign Up') }}</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ __('translate.Home') }}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ __('translate.Sign Up') }}</li>
                    </ol>
                </nav>
            </div>
            </div>
        </div>
    </section>
    <!-- banner-part-end -->



    <!-- contact-us-part-start -->
    <section class="login">
        <div class="container">



            <div class="row login-bg">
                <div class="col-lg-6">
                    <div class="login-head">
                        <h3>{{ __('translate.Sign Up') }}</h3>

                        <span>{{ __('translate.Welcome to CARBAZ') }}</span>
                    </div>


                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="login-form-item">
                            <div class="login-form-inner">
                                <label for="exampleFormControlInput1" class="form-label">{{ __('translate.Name') }}
                                    <span>*</span> </label>
                                <input type="text" class="form-control" id="exampleFormControlInput1"
                                    placeholder="{{ __('translate.Name') }}" name="name" value="{{ old('name') }}">
                            </div>
                        </div>

                        <div class="login-form-item three">
                            <div class="login-form-inner">
                                <label for="exampleFormControlInput1" class="form-label">{{ __('translate.Email address') }}
                                    <span>*</span> </label>
                                <input type="email" class="form-control" id="exampleFormControlInput1"
                                    placeholder="{{ __('translate.Email address') }}" name="email" value="{{ old('email') }}">
                            </div>
                        </div>


                        <div class="login-form-item two">
                            <div class="login-form-inner">
                                <label class="form-label">{{ __('translate.Password') }}
                                    <span>*</span> </label>
                                <input type="password" class="form-control"
                                    placeholder="......" name="password" id="input_password">

                                <div class="icon" id="password-field">
                                    <span>
                                        <i class="fa fa-eye-slash" aria-hidden="true" ></i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="login-form-item two">
                            <div class="login-form-inner">
                                <label class="form-label">{{ __('translate.Confirm Password') }}
                                    <span>*</span> </label>
                                <input type="password" class="form-control"
                                    placeholder="......" name="password_confirmation" id="input_password_confirm">

                                <div class="icon" id="password-field-confirm">
                                    <span>
                                        <i class="fa fa-eye-slash" aria-hidden="true" ></i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        @if($google_recaptcha->status==1)
                            <div class="login-form-item three">
                                <div class="login-form-inner">
                                    <div class="g-recaptcha" data-sitekey="{{ $google_recaptcha->site_key }}"></div>
                                </div>
                            </div>
                        @endif



                        <div class="login-form-item two">
                            <button type="submit" class="thm-btn-two">{{ __('translate.Sign Up') }}</button>
                        </div>


                    </form>



                    @if ($social_login->is_gmail == 1 || $social_login->is_facebook == 1)
                        <div class="login-text">
                            <p>{{ __('translate.OR') }}</p>
                        </div>

                        <div class="login-btn-item">
                            @if ($social_login->is_gmail == 1)
                                <button type="button" class="login-btn login_with_google">
                                    <span>
                                        <svg width="19" height="19" viewBox="0 0 19 19" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M0.996094 5.25533C1.16824 4.84045 1.39908 4.46182 1.64948 4.0993C3.11666 1.9685 5.08464 0.611067 7.58081 0.163961C10.48 -0.355649 13.0818 0.353276 15.308 2.38338C15.3901 2.45991 15.394 2.50019 15.3158 2.58075C14.5098 3.40246 13.7078 4.2282 12.9096 5.05796C12.8235 5.14658 12.7844 5.13047 12.7022 5.05796C11.6107 4.05902 10.3235 3.60789 8.87584 3.74081C6.50487 3.96235 4.93597 5.29964 4.05566 7.54323C4.04001 7.57948 4.02436 7.6117 4.01262 7.64796C3.77005 7.45058 3.52356 7.25724 3.27707 7.0639C2.79584 6.68124 2.31851 6.29053 1.83337 5.9119C1.55558 5.69036 1.29344 5.44868 0.996094 5.25533Z"
                                                fill="#C34131" />
                                            <path
                                                d="M15.3197 16.727C14.8463 17.1862 14.3142 17.5688 13.743 17.887C12.6631 18.4912 11.505 18.8255 10.2804 18.9464C8.90324 19.0874 7.55343 18.9585 6.24275 18.4872C4.09479 17.7098 2.4359 16.3121 1.26998 14.2941C1.16434 14.1128 1.05479 13.9396 0.988281 13.7382C1.02349 13.714 1.06262 13.6979 1.09392 13.6697C1.62602 13.2468 2.15811 12.8198 2.69412 12.3969C3.13232 12.0465 3.57052 11.7 4.00872 11.3496C4.20434 11.8853 4.43909 12.4009 4.77165 12.8682C5.71456 14.1974 6.96265 15.0231 8.55111 15.2326C9.88136 15.4058 11.1529 15.1681 12.3071 14.423C12.3345 14.4068 12.3658 14.3907 12.3932 14.3746C12.5771 14.5156 12.7649 14.6526 12.9448 14.7976C13.5669 15.293 14.189 15.7884 14.8072 16.2919C14.9872 16.437 15.1789 16.5497 15.3197 16.727Z"
                                                fill="#61A053" />
                                            <path
                                                d="M14.2618 11.47C14.2618 11.4579 14.2579 11.4458 14.2579 11.4378C14.2149 11.3653 14.1445 11.3854 14.0819 11.3854C12.5443 11.3854 11.0067 11.3854 9.46905 11.3854C9.28125 11.3854 9.28125 11.3854 9.28125 11.1961C9.28125 10.1246 9.28125 9.0532 9.28125 7.97773C9.28125 7.78036 9.28125 7.77633 9.47687 7.77633C12.2195 7.77633 14.9583 7.77633 17.7009 7.77633C17.7244 7.77633 17.7479 7.77633 17.7713 7.77633C17.8535 7.76827 17.8887 7.81258 17.9005 7.88911C17.9122 7.99384 17.9161 8.09857 17.9357 8.19927C18.01 8.56984 18.0257 8.94847 18.0374 9.32308C18.0491 9.73796 18.0648 10.1528 18.0139 10.5637C17.9748 10.8779 17.967 11.1961 17.9044 11.5062C17.8535 11.7681 17.8105 12.0339 17.744 12.2957C17.6853 12.5294 17.6383 12.763 17.5601 12.9926C17.4583 13.2906 17.3566 13.5887 17.2236 13.8747C17.1101 14.1204 17.0045 14.3661 16.8754 14.6038C16.8167 14.7125 16.7228 14.8132 16.7345 14.9542C16.5702 15.0227 16.5389 15.1838 16.488 15.3288C16.3198 15.4376 16.2376 15.6148 16.1516 15.788C16.1359 15.796 16.1124 15.796 16.1007 15.8081C15.9129 16.0055 15.7525 16.227 15.5451 16.4043C15.4982 16.4446 15.4278 16.4647 15.4043 16.5372C15.3808 16.6178 15.3339 16.6097 15.2791 16.5694C15.0952 16.4284 14.9035 16.2955 14.7274 16.1425C14.2501 15.7316 13.7454 15.3651 13.2642 14.9663C13.0568 14.7931 12.8416 14.636 12.6303 14.4708C12.556 14.4144 12.513 14.3661 12.6225 14.2815C12.9159 14.056 13.1781 13.7982 13.405 13.5041C13.4637 13.4276 13.5459 13.3591 13.538 13.2463C13.5967 13.2423 13.628 13.202 13.6515 13.1537C13.761 12.9362 13.9058 12.7469 13.9958 12.5132C14.121 12.191 14.2227 11.8647 14.301 11.5304C14.3088 11.4901 14.2931 11.478 14.2618 11.47Z"
                                                fill="#557BE8" />
                                            <path
                                                d="M4.01274 11.3542C3.57454 11.7047 3.13634 12.0511 2.69814 12.4015C2.16604 12.8244 1.63395 13.2514 1.09794 13.6743C1.06664 13.6985 1.02751 13.7187 0.9923 13.7428C0.839713 13.5173 0.753639 13.2595 0.655827 13.0097C0.299791 12.1034 0.0963414 11.1609 0.0259167 10.1861C-0.0718954 8.84479 0.108079 7.54778 0.550189 6.283C0.663652 5.96076 0.792764 5.64255 0.941438 5.33642C0.957088 5.30822 0.964913 5.27197 0.996213 5.25586C1.29356 5.4492 1.5557 5.69088 1.83348 5.90839C2.31863 6.28702 2.79595 6.67774 3.27719 7.0604C3.51976 7.25374 3.76625 7.44708 4.01274 7.64043C3.88754 8.10364 3.77408 8.57089 3.74278 9.05425C3.69191 9.77123 3.76234 10.4721 3.96579 11.1569C3.98535 11.2253 3.99709 11.2898 4.01274 11.3542Z"
                                                fill="#DFB32B" />
                                            <path
                                                d="M16.7307 14.9631C16.719 14.8222 16.8129 14.7215 16.8716 14.6127C17.0007 14.3751 17.1063 14.1253 17.2198 13.8836C17.3528 13.5977 17.4584 13.2996 17.5562 13.0015C17.6306 12.7759 17.6775 12.5383 17.7401 12.3047C17.8066 12.0429 17.8497 11.777 17.9005 11.5152C17.9631 11.205 17.971 10.8868 18.0101 10.5726C18.061 10.1618 18.0453 9.7469 18.0336 9.33202C18.0218 8.95742 18.0062 8.57879 17.9318 8.20821C17.9123 8.10751 17.9084 8.00278 17.8966 7.89806C17.8888 7.8175 17.8497 7.77722 17.7675 7.78527C17.744 7.7893 17.7206 7.78527 17.6971 7.78527C14.9544 7.78527 12.2157 7.78527 9.47306 7.78527C9.27743 7.78527 9.27743 7.78527 9.27743 7.98667C9.27743 9.05812 9.27743 10.1296 9.27743 11.205C9.27743 11.3943 9.27743 11.3943 9.46523 11.3943C11.0028 11.3943 12.5404 11.3943 14.078 11.3943C14.1406 11.3943 14.2111 11.3702 14.2541 11.4467C13.4481 11.4467 12.6422 11.4427 11.8362 11.4427C11.0107 11.4427 10.189 11.4387 9.36351 11.4467C9.25396 11.4467 9.22266 11.4185 9.22266 11.3017C9.22657 10.1537 9.22657 9.00575 9.22266 7.85375C9.22266 7.74499 9.25396 7.7168 9.35568 7.7168C12.157 7.72082 14.9584 7.72082 17.7597 7.7168C17.8614 7.7168 17.924 7.72888 17.9436 7.8618C18.1901 9.46897 18.1353 11.0641 17.7167 12.635C17.5054 13.4325 17.1924 14.1898 16.7777 14.9027C16.7698 14.9229 16.7503 14.939 16.7307 14.9631Z"
                                                fill="#6282CA" />
                                            <path
                                                d="M13.5409 13.2471C13.5487 13.3599 13.4665 13.4283 13.4079 13.5049C13.1809 13.7989 12.9188 14.0567 12.6254 14.2823C12.5158 14.3669 12.5588 14.4152 12.6332 14.4716C12.8445 14.6367 13.0636 14.7978 13.267 14.967C13.7482 15.3698 14.2569 15.7364 14.7303 16.1432C14.9063 16.2963 15.0981 16.4292 15.2819 16.5702C15.3367 16.6145 15.3837 16.6185 15.4071 16.5379C15.4306 16.4654 15.501 16.4453 15.548 16.405C15.7553 16.2278 15.9158 16.0062 16.1036 15.8089C16.1153 15.7968 16.1349 15.7968 16.1544 15.7887C16.1309 15.8935 16.0488 15.9539 15.9862 16.0264C15.7788 16.2721 15.5636 16.5097 15.3211 16.7232C15.1802 16.546 14.9846 16.4292 14.8124 16.2922C14.1943 15.7887 13.5722 15.2933 12.9501 14.7978C12.7701 14.6528 12.5823 14.5159 12.3984 14.3749C12.8366 14.0607 13.2161 13.6821 13.5409 13.2471Z"
                                                fill="#6282CA" />
                                            <path
                                                d="M14.2629 11.4707C14.2942 11.4747 14.3098 11.4908 14.302 11.5271C14.2237 11.8614 14.122 12.1917 13.9968 12.5099C13.9068 12.7395 13.7621 12.9329 13.6525 13.1504C13.629 13.1987 13.5977 13.239 13.5391 13.243C13.7621 12.8644 13.9851 12.4858 14.1064 12.0588C14.1611 11.8654 14.2081 11.6681 14.2629 11.4707Z"
                                                fill="#6282CA" />
                                            <path
                                                d="M16.1523 15.7971C16.2384 15.6239 16.3167 15.4466 16.4888 15.3379C16.4027 15.5111 16.2971 15.6682 16.1523 15.7971Z"
                                                fill="#6282CA" />
                                            <path
                                                d="M16.4844 15.3375C16.5352 15.1925 16.5665 15.0314 16.7309 14.9629C16.6643 15.0958 16.5939 15.2328 16.4844 15.3375Z"
                                                fill="#6282CA" />
                                        </svg>
                                    </span>
                                    {{ __('translate.Sign In with Google') }}

                                </button>
                            @endif

                            @if ($social_login->is_facebook == 1)
                            <button type="button" class="login-btn login_with_facebook">
                                <span>
                                    <svg width="10" height="19" viewBox="0 0 10 19" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M2.78246 14.7244C2.78246 13.4745 2.77644 12.2185 2.78849 10.9686C2.78849 10.783 2.74028 10.7335 2.56553 10.7397C1.8605 10.7458 1.15547 10.7458 0.450437 10.7273C0.119012 10.7211 0.00451943 10.5973 0.00451943 10.2508C-0.00150648 9.2794 -0.00150648 8.30177 0.00451943 7.33033C0.00451943 6.96526 0.149141 6.84151 0.540826 6.83532C1.21573 6.82914 1.89063 6.82914 2.57156 6.83532C2.74631 6.83532 2.79452 6.79201 2.80054 6.60639C2.80657 5.72776 2.76439 4.84294 2.8367 3.96431C3.01748 1.81105 4.57819 0.208485 6.66918 0.0414215C7.62127 -0.0328288 8.57337 0.0166714 9.53149 0.0104839C9.85688 0.0104839 9.99548 0.152797 9.99548 0.499298C10.0015 1.40268 10.0015 2.30606 9.99548 3.20943C9.99548 3.53737 9.88099 3.66112 9.56161 3.6735C8.94697 3.69825 8.33233 3.69825 7.71166 3.70444C6.99458 3.71681 6.71738 4.00144 6.71136 4.73775C6.70533 5.35651 6.71738 5.97526 6.69931 6.59401C6.69328 6.7982 6.76559 6.83532 6.94034 6.82914C7.71166 6.81676 8.489 6.82295 9.26032 6.82295C9.7665 6.82295 9.86894 6.92814 9.86894 7.4417C9.86894 8.36364 9.86894 9.2794 9.86894 10.2013C9.86894 10.5973 9.78457 10.7087 9.39892 10.7149C8.58542 10.7335 7.77795 10.7397 6.96445 10.7211C6.72341 10.7149 6.68123 10.7953 6.68726 11.0181C6.69328 13.4127 6.69328 15.8134 6.69328 18.208C6.69328 18.9319 6.63302 19 5.92196 19C5.06629 19 4.21061 19 3.35493 19C2.90901 19 2.79452 18.8762 2.79452 18.4246C2.78246 17.1994 2.78246 15.9619 2.78246 14.7244Z"
                                            fill="#3D6AD5" />
                                    </svg>
                                </span>
                                {{ __('translate.Sign In with Facebook') }}

                            </button>
                            @endif
                        </div>
                    @endif


                    <div class="create-accoun-text">
                        <p>{{ __('translate.Already have an account ?') }}<span><a href="{{ route('login') }}"> {{ __('translate.Sign In Here') }}</a></span></p>
                    </div>


                </div>

                <div class="col-lg-6">
                    <div class="login-img">
                        <img src="{{ asset($setting->login_page_bg) }}" alt="img">
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- contact-us-part-end -->

</main>

@endsection


@push('js_section')
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<script>
    let is_password = true;
    let is_password_confirm = true;
    (function($) {
        "use strict"
        $(document).ready(function () {
            $("#password-field").on("click",function(e){
                is_password = !is_password;
                if(is_password){
                    $("#input_password").attr('type', 'password');

                    $("#password-field").html(`<span>
                                        <i class='fa fa-eye-slash' aria-hidden='true' ></i>
                                    </span>`)

                }else{
                    $("#input_password").attr('type', 'text');
                    $("#password-field").html(`<span>
                                        <i class='fa fa-eye' aria-hidden='true' ></i>
                                    </span>`)
                }
            })

            $("#password-field-confirm").on("click",function(e){
                is_password_confirm = !is_password_confirm;
                if(is_password_confirm){
                    $("#input_password_confirm").attr('type', 'password');

                    $("#password-field-confirm").html(`<span>
                                        <i class='fa fa-eye-slash' aria-hidden='true' ></i>
                                    </span>`)

                }else{
                    $("#input_password_confirm").attr('type', 'text');
                    $("#password-field-confirm").html(`<span>
                                        <i class='fa fa-eye' aria-hidden='true' ></i>
                                    </span>`)
                }
            })



            $(".login_with_google").on("click", function(e){
                window.location = "{{ route('login-google') }}";
            })

            $(".login_with_facebook").on("click", function(e){
                window.location = "{{ route('login-facebook') }}";
            })


        });
    })(jQuery);
</script>
@endpush
