@forelse ($auth_user_avorites as $favorite)
<li class="scrollable-container ps-container ps-active-y media-list w-100">
    <a href="{{ route('course', ['id' => $favorite->course->id, 'title' => $favorite->course->slug]) }}"
        class="d-block">
        <div class="media p-2">
            <div class="media-body d-flex">
                <img src="{{ $favorite->course->image_url }}" width="50px" height="50px"
                    style="border-radius: 50%; margin-top:5px;">
                <div class="">
                    <p class="notification-text font-small-3 text-muted pl-3 pt-1 w-100">
                        <span class="text-muted">{{ $favorite->course->title }}</span>
                    </p>
                </div>
            </div>
        </div>
    </a>
    <hr class="mb-0 mt-0">
</li>
@empty
<li class="py-3 w-100 text-center">No Favorites
</li>
@endforelse
