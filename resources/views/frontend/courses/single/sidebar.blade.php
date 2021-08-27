<div class="sidebar pt-0">
    <!-- Feature -->
    <div class="sidebar_section">
        <div class="sidebar_section_title">Course Feature</div>
        <div class="sidebar_feature">
            <div class="course_price">
                @if ($course->discount)
                <small class="pr-2"> <del> ${{ $course->price }} </del> </small> {{ $course->total() }}
                @else {{ $course->price ? '$' . $course->price : 'FREE' }}
                @endif

                <span class="float-right">
                    @auth
                    <a href="{{ route('course.favorite', $course) }}" class="user_click">
                        <i
                            class=" {{ $course->favorites()->whereUserId(auth()->id())->count() > 0 ? 'fas' : 'far' }} fa-heart"></i>
                    </a>
                    @endauth
                </span>
            </div>

            <!-- Features -->
            <div class="feature_list">
                <!-- Feature -->
                <div class="feature d-flex flex-row align-items-center justify-content-start">
                    <div class="feature_title"><i class="fa fa-clock-o" aria-hidden="true"></i><span>Duration:</span>
                    </div>
                    <div class="feature_text ml-auto">2 weeks</div>
                </div>

                <!-- Feature -->
                <div class="feature d-flex flex-row align-items-center justify-content-start">
                    <div class="feature_title"><i class="fa fa-play" aria-hidden="true"></i><span>Lectures:</span>
                    </div>
                    <div class="feature_text ml-auto">{{ $course->videos_count }}</div>
                </div>
            </div>
            <a href="{{ route('course.videos', ['id' => $course->id, 'course' => $course->slug]) }}"
                class="btn btn-outline-info d-block w-100 mt-4"> Show Videos </a>
        </div>
    </div>

    <!-- Teacher -->
    <div class="sidebar_section">
        <div class="sidebar_section_title">Teacher</div>
        <div class="sidebar_teacher">
            <div class="teacher_title_container d-flex flex-row align-items-center justify-content-start">
                <div class="teacher_image"><img src="{{ $course->user->image_url }}" alt=""></div>
                <div class="teacher_title">
                    <div class="teacher_name">
                        <a href="{{ route('courses', ['id' => $course->user_id, 'teacher' => $course->user->name]) }}">
                            {{ $course->user->name }}
                        </a>
                    </div>
                    <div class="teacher_position">Marketing & Management</div>
                </div>
            </div>
            <div class="teacher_meta_container">
                <!-- Teacher Rating -->
                <div class="teacher_meta d-flex flex-row align-items-center justify-content-start">
                    <div class="teacher_meta_title">Average Rating:</div>
                    <div class="teacher_meta_text ml-auto"><span>{{ round($course->ratings_avg_star, 1) }}</span><i
                            class="fa fa-star" aria-hidden="true"></i>
                    </div>
                </div>
                <!-- Teacher Review -->
                <div class="teacher_meta d-flex flex-row align-items-center justify-content-start">
                    <div class="teacher_meta_title">Review:</div>
                    <div class="teacher_meta_text ml-auto"><span>{{ $course->comments_count }}</span><i
                            class="fa fa-comment" aria-hidden="true"></i></div>
                </div>
                <!-- Teacher Quizzes -->
                <div class="teacher_meta d-flex flex-row align-items-center justify-content-start">
                    <div class="teacher_meta_title">Quizzes:</div>
                    <div class="teacher_meta_text ml-auto"><span>600</span><i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="teacher_info">
                <p>Hi! I am Masion, I’m a marketing & management eros pulvinar velit laoreet, sit
                    amet
                    egestas erat dignissim. Sed quis rutrum tellus, sit amet viverra felis. Cras
                    sagittis sem sit amet urna feugiat rutrum nam nulla ipsum.</p>
            </div>
        </div>
    </div>

    @include('frontend.courses.latest-section')

</div>
