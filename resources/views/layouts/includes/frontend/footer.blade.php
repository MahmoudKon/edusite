<footer class="footer">
    <div class="footer_background"
        style="background-image:url({{ asset('assets/frontend/images/footer_background.png') }})"></div>
    <div class="container">
        <div class="row footer_row">
            <div class="col">
                <div class="footer_content">
                    <div class="row">

                        <div class="col-lg-3 footer_col">

                            <!-- Footer About -->
                            <div class="footer_section footer_about">
                                <div class="footer_logo_container">
                                    <a href="#">
                                        <div class="footer_logo_text">
                                            <img src="{{ asset('assets/frontend/images/logo-alt.png') }}" width="100px">
                                        </div>
                                    </a>
                                </div>
                                <div class="footer_about_text">
                                    <p>Lorem ipsum dolor sit ametium, consectetur adipiscing elit.</p>
                                </div>
                                <div class="footer_social">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-3 footer_col">

                            <!-- Footer Contact -->
                            <div class="footer_section footer_contact">
                                <div class="footer_title">Contact Us</div>
                                <div class="footer_contact_info">
                                    <ul>
                                        <li>Email: Info.deercreative@gmail.com</li>
                                        <li>Phone: +(88) 111 555 666</li>
                                        <li>40 Baria Sreet 133/2 New York City, United States</li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-3 footer_col">

                            <!-- Footer links -->
                            <div class="footer_section footer_links">
                                <div class="footer_title">Contact Us</div>
                                <div class="footer_links_container">
                                    <ul>
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                        <li><a href="#">Features</a></li>
                                        <li><a href="courses.html">Courses</a></li>
                                        <li><a href="#">Events</a></li>
                                        <li><a href="#">Gallery</a></li>
                                        <li><a href="#">FAQs</a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-3 footer_col clearfix">

                            <!-- Footer links -->
                            <div class="footer_section footer_mobile">
                                <div class="footer_title">Mobile</div>
                                <div class="footer_mobile_content">
                                    <div class="footer_image"><a href="#"><img
                                                src="{{ asset('assets/frontend/images/mobile_1.png') }}" alt=""></a>
                                    </div>
                                    <div class="footer_image"><a href="#"><img
                                                src="{{ asset('assets/frontend/images/mobile_2.png') }}" alt=""></a>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="row copyright_row">
            <div class="col">
                <div class="copyright d-flex flex-lg-row flex-column align-items-center justify-content-start">
                    <div class="cr_text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>
                            document.write(new Date().getFullYear());
                        </script> All rights reserved | This template is made with <i class="fa fa-heart-o"
                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>.
                        Downloaded from <a href="https://themeslab.org/" target="_blank">Themeslab</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                    <div class="ml-lg-auto cr_links">
                        <ul class="cr_list">
                            <li><a href="#">Copyright notification</a></li>
                            <li><a href="#">Terms of Use</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>

<script src="{{ asset('assets/frontend/js/jquery-3.2.1.min.js') }}"></script>
<script src="{{ asset('assets/frontend/styles/bootstrap4/popper.js') }}"></script>
<script src="{{ asset('assets/frontend/styles/bootstrap4/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/greensock/TweenMax.min.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/greensock/TimelineMax.min.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/scrollmagic/ScrollMagic.min.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/greensock/animation.gsap.min.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/greensock/ScrollToPlugin.min.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/OwlCarousel2-2.2.1/owl.carousel.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/easing/easing.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/parallax-js-master/parallax.min.js') }}"></script>
<script src="{{ asset('assets/frontend/plugins/colorbox/jquery.colorbox-min.js') }}"></script>
<script src="{{ asset('assets/frontend/js/custom.js') }}"></script>

{{-- ************** START SWEETALERT JS ************** --}}
@include('sweetalert::alert')
{{-- ************** END SWEETALERT JS ************** --}}

<script src="{{ asset('assets/helper-script.js') }}"></script>
<script>
    let notify_count = 0;
    let notificationSound = new Audio('{{ asset("assets/notification-sound.mp3") }}');
    // Load All Notifications When Click On Icon
    $('#noty_click').click(function () {
        if(! $(this).next('.dropdown-menu').hasClass('show')) {
            $('#notification_list').empty().load("{{ route('show.notifications') }}");
            setTimeout(function () {
                $('#notify-count').text(0);
            }, 2000);
        }
    });

    if($('#notify-count').length)
        setInterval(function() { RunNotificationAjax($('#notify-count'), "{{ url('get/notifications/count') }}"); }, 3000);

    // Load All Favorite When Click On Icon
    $('#favorite_click').click(function () {
        $('#favorites_list').empty().load("{{ route('show.favorites') }}");
    });
</script>

@yield('script')
</body>

</html>
