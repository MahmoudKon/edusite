<div class="course">
    <div class="course_image"><img src="{{ $course->image_url }}" alt="{{ $course->title }}" width=360px height=229px>
    </div>
    <div class="course_body">
        <h3 class="course_title" style="max-height: 28px; overflow: hidden">
            <a href="{{ route('course', ['id' => $course->id, 'title' => $course->slug]) }}" data-toggle="tooltip"
                title="{{ $course->title }}">
                {{ $course->title }}
            </a>
        </h3>
        <div class="course_teacher d-flex justify-content-between" style="max-height: 22px;overflow: hidden;">
            <a href="{{ route('profile', ['id' => $course->user_id]) }}" style="color: #14bdee; font-weight: bold">
                {{ $course->user->name }}
            </a>
            <span style="font-size: 14px;color: #76777a;">{{ $course->created_at->diffForHumans() }}</span>
        </div>
        <div class="course_text" style="max-height: 54px; overflow: hidden">
            <p>{!! $course->desc !!}</p>
        </div>
    </div>
    <div class="course_footer">
        <div class="course_footer_content d-flex flex-row align-items-center justify-content-between">
            <div class="course_info">
                <i class="fa fa-star" aria-hidden="true"></i>
                <span>{{ round($course->ratings_avg_star, 1) }} Ratings</span>
            </div>

            <div class="course_info">
                @auth
                <a href="{{ route('course.favorite', $course) }}" class="user_click">
                    <i style="color: red" class=" {{ $course->favorites()->whereUserId(auth()->id())->count() > 0 ? 'fas' : 'far' }}
                    fa-heart"></i>
                    <span class="count">{{ $course->favorites_count }}</span>
                </a>
                @else
                <i class="fas fa-heart" style="color: red"></i>
                <span class="count">{{ $course->favorites_count }}</span>
                @endauth
            </div>

            <div class="course_price">
                @if ($course->discount)
                <span>${{ $course->price }}</span>{{ $course->total() }}
                @else
                {{ $course->price ? '$' . $course->price : 'FREE' }}
                @endif
            </div>
        </div>
        {{-- <a href="{{ route('payment') }}" class="btn btn-outline-info d-block w-100"> Payment </a> --}}
    </div>
    <a href="{{ route('course.videos', ['id' => $course->id, 'course' => $course->slug]) }}"
        class="btn btn-outline-info d-block w-100" style="border-radius: 0 0 .25rem .25rem;"> Show Videos </a>
</div>
