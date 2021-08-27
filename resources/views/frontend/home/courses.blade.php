<div class="courses">
    <div class="section_background parallax-window" data-parallax="scroll"
        data-image-src="{{ asset('assets/frontend/images/courses_background.jpg') }}" data-speed="0.8"></div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="section_title_container text-center">
                    <h2 class="section_title">Popular Online Courses</h2>
                    <div class="section_subtitle">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel gravida arcu.
                            Vestibulum feugiat, sapien ultrices fermentum congue, quam velit venenatis sem</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row courses_row">

            @forelse ($courses as $course)
            <div class="col-lg-4 course_col">
                @include('frontend.includes.course-card')
            </div>
            @empty
            <p class="text-center">no courses found</p>
            @endforelse

        </div>
        <div class="row">
            <div class="col">
                <div class="courses_button trans_200"><a href="{{ route('courses') }}">view all courses</a></div>
            </div>
        </div>
    </div>
</div>
