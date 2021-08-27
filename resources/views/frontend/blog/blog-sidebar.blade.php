<div class="sidebar">
    <div class="sidebar_section">
        <div class="sidebar_section_title">Categories</div>
        <div class="sidebar_categories">
            <ul>
                @foreach ($categories as $category)
                <li>
                    <a href="{{ route('blog', ['category' => $category->slug]) }}"
                        {{ request()->category == $category->slug ? 'style=color:#14bdee; font-weight: bold' : '' }}>
                        {{ $category->name }} <span
                            class="float-right">({{ $category->posts()->whereVisibility(1)->count() }})</span>
                    </a>
                </li>
                @endforeach
            </ul>
        </div>
    </div>

    {{-- START LATEST COURSES SECTION --}}
    @include('frontend.blog.latest-section')
    {{-- END LATEST COURSES SECTION --}}

    {{-- START GALLERY SECTION --}}
    @include('frontend.includes.gallery-section')
    {{-- END GALLERY SECTION --}}

    {{-- START TAGS SECTION --}}
    @include('frontend.courses.tags-section')
    {{-- END TAGS SECTION --}}

    {{-- START BANNER SECTION --}}
    @include('frontend.includes.banner-section')
    {{-- END BANNER SECTION --}}
</div>
