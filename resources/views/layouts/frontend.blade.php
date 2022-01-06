{{-- START INCLUDE HEADER, NAVBAR SECTION --}}
@include('layouts.includes.frontend.header')
{{-- END INCLUDE HEADER, NAVBAR SECTION --}}

@yield('home')

@yield('content')

{{-- START INCLUDE FOOTER SECTION --}}
@include('layouts.includes.frontend.footer')
{{-- END INCLUDE FOOTER SECTION --}}
