@if (isset($slider_images) && $slider_images != null)
<div class="home">
    <div class="home_slider_container">

        <!-- Home Slider -->
        <div class="owl-carousel owl-theme home_slider">
            @foreach ($slider_images as $slice)
            <div class="owl-item">
                <div class="home_slider_background" style="background-image:url({{ $slice->image_url }})"></div>
                <div class="home_slider_content">
                    <div class="container">
                        <div class="row">
                            <div class="col text-center">
                                <div style="text-shadow: 9px 0px 2px #000;letter-spacing: 3px;color:#bfbfbf;"
                                    class="home_slider_title">{{ $slice->title }}</div>
                                <div style="color: #bfbfbf;text-shadow: 2px 2px 0px #000;" class="home_slider_subtitle">
                                    {{ $slice->desc }}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>

    <!-- Home Slider Nav -->
    <div class="home_slider_nav home_slider_prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>
    <div class="home_slider_nav home_slider_next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
</div>
@endif
