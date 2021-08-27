<div class="sidebar_section">
    <div class="sidebar_section_title">Tags</div>
    <div class="sidebar_tags">
        <ul class="tags_list">
            @foreach ($tags as $tag)
            <li>
                <a href="{{ route('blog', ['tag' => $tag->slug]) }}">
                    {{ $tag->name }} ({{ $tag->videos_count }})
                </a>
            </li>
            @endforeach
        </ul>
    </div>
</div>
