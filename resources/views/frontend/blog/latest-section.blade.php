<div class="sidebar_section">
    <div class="sidebar_section_title">Latest Posts</div>
    <div class="sidebar_latest">
        @foreach ($latest as $item)
        <div class="latest d-flex flex-row align-items-start justify-content-start">
            <div class="latest_image">
                <div><img src="{{ $item->image_url }}" alt="{{ $item->title }}"></div>
            </div>
            <div class="latest_content">
                <div class="latest_title" style="height: 52px;overflow: hidden;">
                    <a href="{{ route('post', ['id' => $item->id, 'title' => $item->slug]) }}" data-toggle="tooltip"
                        title="{{ $item->title }}">{{ $item->title }}</a>
                </div>
                <div class="latest_date">{{ $item->created_at->diffForHumans() }}</div>
            </div>
        </div>
        @endforeach
    </div>
</div>
