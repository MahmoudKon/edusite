<div class="team">
    <div class="feature_background"
        style="background-image:url({{ asset('assets/frontend/images/courses_background.jpg') }})"></div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="section_title_container text-center">
                    <h2 class="section_title">The Best Tutors in Town</h2>
                    <div class="section_subtitle">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel gravida arcu.
                            Vestibulum feugiat, sapien ultrices fermentum congue, quam velit venenatis sem</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row team_row">

            @foreach ($teachers as $teacher)
            <!-- Team Item -->
            <div class="col-lg-3 col-md-6 team_col">
                <div class="team_item">
                    <div class="team_image"><img class="w-100" src="{{ $teacher->image_url }}" alt="">
                    </div>
                    <div class="team_body">
                        <div class="team_title"><a
                                href="{{ route('profile', ['id' => $teacher->id]) }}">{{ $teacher->name }}</a></div>
                        <div class="team_subtitle">{{ $teacher->job ?? 'Web Developer' }}</div>
                        <div class="team_subtitle" style="color: #14bdee">
                            {{ $teacher->is_teacher == 1 ? 'Teacher' : 'Admin' }}
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</div>
