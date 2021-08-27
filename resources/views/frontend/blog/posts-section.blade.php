<div class="courses_search_container">
    <form action="{{ route('blog') }}" method="get" id="courses_search_form"
        class="courses_search_form d-flex flex-row align-items-center justify-content-start">
        <input type="search" class="courses_search_input" name="search" placeholder="Search Courses"
            value="{{ request()->search ?? '' }}">
        <select id="courses_search_select" class="courses_search_select courses_search_input" name="category">
            <option value="">All Categories</option>
            @foreach ($categories as $category)
            <option value="{{ $category->slug }}" {{ request()->category == $category->slug ? 'selected' : '' }}>
                {{ $category->name }}
            </option>
            @endforeach
        </select>
        <button action="submit" class="courses_search_button ml-auto">search now</button>
    </form>
</div>
<div class="courses_container">
    <div class="row courses_row">

        @forelse ($posts as $post)
        <div class="col-lg-6 course_col">
            @include('frontend.includes.post-card')
        </div>
        @empty
        <p class="text-center">no courses found</p>
        @endforelse
    </div>
    <div class="d-flex justify-content-center">
        {!! $posts->appends(request()->query())->links() !!}
    </div>
</div>
