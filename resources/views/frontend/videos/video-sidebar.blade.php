<div class="sidebar" style="padding: 35px;overflow-y: scroll;height: 100vh;">
    <div class="sidebar_section">
        <div class="sidebar_section_title">Popular Videos</div>
        <div class="sidebar_latest">
            @foreach ($latest as $index => $item)
            <div class="latest d-flex flex-row align-items-start justify-content-start">
                <span style="padding-right: 5px;line-height: 74px;color: #000;">{{ ++$index }}</span>
                <div class="latest_image">
                    <div><img src="{{ $item->course->image_url }}" alt="{{ $item->title }}"></div>
                </div>
                <div class="latest_content">
                    <div class="latest_title" style="height: 75px;overflow: hidden;">
                        <a href="{{ route('course.video', ['video' => $item->id, 'title' => $item->slug]) }}"
                            data-toggle="tooltip" title="{{ $item->title }}">{{ $item->title }}</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
