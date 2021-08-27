<div class="course">
    @if ($post->image)
    <div class="course_image"><img src="{{ $post->image_url }}" alt="{{ $post->title }}" width=360px height=229px></div>
    @endif
    <div class="course_body">
        <h3 class="course_title" style="max-height: 28px; overflow: hidden">
            <a href="{{ route('post', ['id' => $post->id, 'title' => $post->slug]) }}" data-toggle="tooltip"
                title="{{ $post->title }}">
                {{ $post->title }}
            </a>
        </h3>
        <div class="course_teacher d-flex justify-content-between pt-2 pb-3">
            <a href="{{ route('profile', ['id' => $post->user_id]) }}" style="color: #b5b8be">
                {{ $post->user->name }}
            </a>
            <span style="color: #b5b8be">
                {{ $post->created_at->diffForHumans() }}
            </span>
        </div>
        <div class="blog_post_text" style="height: 85px;overflow: hidden;">{!! $post->desc !!}</div>
    </div>
    <div class="course_footer_content d-flex flex-row align-items-center justify-content-between px-5">
        <span> <i class="fa fa-eye"></i> {{ $post->visitors_count }} </span>

        @auth
        <a href="{{ route('post.like', $post) }}" class="user_click" style="color:#a5a5a5">
            <i class=" {{ $post->likes()->whereUserId(auth()->id())->count() > 0 ? 'fas' : 'far' }} fa-thumbs-up"></i>
            <span class="count">{{ $post->likes_count }}</span>
        </a>
        @else
        <span> <i class="far fa-thumbs-up"></i> <span class="count">{{ $post->likes_count }}</span></span>
        @endauth
    </div>
</div>
