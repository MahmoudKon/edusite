{{-- START SIDEBAR SECTION --}}
@include('layouts.includes.backend.header')
{{-- END SIDEBAR SECTION --}}
<style>
    body {
        padding-top: 0px !important;
    }

    .main-menu.menu-fixed {
        top: 0rem;
        height: 100%;
    }
</style>

{{-- START SIDEBAR SECTION --}}
@include('frontend.profile.sidebar')
{{-- END SIDEBAR SECTION --}}

<div class="app-content content">
    <div class="content-wrapper pt-0">
        <div class="content-body">
            {{-- START CONTENT SECTION --}}
            @yield('content')
            {{-- END CONTENT SECTION --}}
        </div>
    </div>
</div>

{{-- START FOOTER SECTION --}}
<script type="text/javascript" src="{{ path('vendors/js/vendors.min.js') }}"></script>
<script type="text/javascript" src="{{ path('custom/js/preview-file.js') }}"></script>

{{-- ************** START SWEETALERT JS ************** --}}
@include('sweetalert::alert')
{{-- ************** END SWEETALERT JS ************** --}}
<script src="https://js.pusher.com/7.0/pusher.min.js"></script>
<script>
    Pusher.logToConsole = true;
    var pusher = new Pusher('6447b47e7ae98410707d', {
    cluster: 'mt1',
    authEndPoint: '/broadcasting/auth',
    });

    $(document).on('click', '.user_click', function (e) {
        e.preventDefault();
        let btn = $(this);
        $.ajax({
            url: btn.attr('href'),
            type: "get",
            success: function (data, textStatus, jqXHR) {
                btn.empty().html(data.type ? 'Follow' : 'UNFollow');
                $('#followers_count').html(data.count);

                var channel = pusher.subscribe('private-make-follow');
                channel.bind('Illuminate\Notifications\Events\BroadcastNotificationCreated', function(data) {
                    alert('adfad');
                });
            },
        });
    });
</script>

@yield('script')
@stack('script')

</body>

</html>
{{-- END FOOTER SECTION --}}
