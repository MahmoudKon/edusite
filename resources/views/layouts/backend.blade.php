{{-- START HEADER SECTION --}}
@include('layouts.includes.backend.header')
{{-- END HEADER SECTION --}}


{{-- START NAVBAR SECTION --}}
@include('layouts.includes.backend.navbar')
{{-- END NAVBAR SECTION --}}


{{-- START SIDEBAR SECTION --}}
@include('layouts.includes.backend.sidebar')
{{-- END SIDEBAR SECTION --}}


<div class="app-content content">
    <div class="content-wrapper">

        {{-- START SIDEBAR SECTION --}}
        @include('layouts.includes.backend.breadcrumb')
        {{-- END SIDEBAR SECTION --}}

        <div class="content-body">
            {{-- START CONTENT SECTION --}}
            @yield('content')
            {{-- END CONTENT SECTION --}}
        </div>
    </div>
</div>


{{-- START MODAL SECTION --}}
@include('layouts.includes.backend.modal')
{{-- END MODAL SECTION --}}


{{-- START FOOTER SECTION --}}
@include('layouts.includes.backend.footer')
{{-- END FOOTER SECTION --}}
