{{-- START FOOTER --}}
<footer class="footer footer-static footer-light navbar-border navbar-shadow">
    <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2">
        <span class="float-md-left d-block d-md-inline-block">Copyright &copy; 2018 <a
                class="text-bold-800 grey darken-2"
                href="https://themeforest.net/user/pixinvent/portfolio?ref=pixinvent" target="_blank">PIXINVENT
            </a>, All rights reserved. </span>
        <span class="float-md-right d-block d-md-inline-blockd-none d-lg-block">Hand-crafted & Made with <i
                class="ft-heart pink"></i></span>
    </p>
</footer>
{{-- END FOOTER --}}

{{-- ************** START VENDOR JS ************** --}}
<script type="text/javascript" src="{{ path('vendors/js/vendors.min.js') }}"></script>
<script type="text/javascript" src="{{ path('vendors/js/forms/select/select2.full.min.js') }}"></script>
<script type="text/javascript" src="{{ path('vendors/js/tables/datatable/datatables.min.js') }}"></script>
<script type="text/javascript" src="{{ path('vendors/js/tables/datatable/buttons.bootstrap4.min.js') }}"></script>
<script type="text/javascript" src="{{ path('vendors/js/tables/datatable/dataTables.buttons.min.js') }}"></script>
<script type="text/javascript" src="{{ path('vendors/js/forms/extended/maxlength/bootstrap-maxlength.js') }}"></script>
{{-- ************** END VENDOR JS ************** --}}

{{-- ************** START FONTAWESOME JS ************** --}}
<script type="text/javascript" src="{{ path('fonts/fontawesome/js/all.min.js') }}"></script>
{{-- ************** START FONTAWESOME JS ************** --}}

{{-- ************** START MODERN JS ************** --}}
<script type="text/javascript" src="{{ path('js/core/app-menu.js') }}"></script>
<script type="text/javascript" src="{{ path('js/core/app.js') }}"></script>
<script type="text/javascript" src="{{ path('js/scripts/customizer.js') }}"></script>
<script type="text/javascript" src="{{ path('js/scripts/forms/select/form-select2.js') }}"></script>
{{-- ************** END MODERN JS ************** --}}

{{-- ************** START SWEETALERT JS ************** --}}
@include('sweetalert::alert')
{{-- ************** END SWEETALERT JS ************** --}}

{{-- ************** START CUSTOM JS ************** --}}
<script type="text/javascript" src="{{ path('custom/js/preview-file.js') }}"></script>
<script type="text/javascript" src="{{ path('custom/js/script.js') }}"></script>
{{-- ************** END CUSTOM JS ************** --}}

<script type="text/javascript">
    $('#noty_click').click(function () {
        if(! $(this).next('.dropdown-menu').hasClass('show')) {
            $('#notification_list').empty().load("{{ route('backend.show.notifications') }}");
            setTimeout(function () {
                $('#notify-count').text(0);
            }, 2000);
        }
    });

    $('.badge-text-maxlength').maxlength({
        alwaysShow: true,
        separator: ' of ',
        preText: 'You have ',
        postText: ' chars remaining.',
        validate: true,
        warningClass: "badge badge-success",
        limitReachedClass: "badge badge-danger",
    });
</script>

@yield('script')
@stack('script')

</body>

</html>
