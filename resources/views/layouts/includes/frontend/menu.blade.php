<ul class="main_nav">
    <li class="{{ in_array('/', explode('.', request()->route()->action['as'])) ? 'active' : '' }}">
        <a href="{{ route('/') }}">Home</a>
    </li>
    <li class="{{ in_array('about', explode('.', request()->route()->action['as'])) ? 'active' : '' }}">
        <a href="{{ route('about') }}">About</a>
    </li>
    <li class="{{ in_array('courses', explode('.', request()->route()->action['as'])) ? 'active' : '' }}">
        <a href="{{ route('courses') }}">Courses</a>
    </li>
    <li class="{{ in_array('blog', explode('.', request()->route()->action['as'])) ? 'active' : '' }}">
        <a href="{{ route('blog') }}">Blog</a>
    </li>
    {{-- <li class="{{ in_array('contact', explode('.', request()->route()->action['as'])) ? 'active' : '' }}">
    <a href="{{ route('contact') }}">Contact</a>
    </li> --}}
</ul>
