<div class="comments_container mt-3">
    <div class="comments_title"><span>{{ $comments->count() }}</span> Comments</div>
    <ul class="comments_list">
        @foreach ($comments as $comment)
        <li id="comment_{{ $comment->id }}">
            <div class="comment_item d-flex flex-row align-items-start jutify-content-start">
                <div class="comment_image">
                    <div><img src="{{ $comment->user->image_url }}" alt="{{ $comment->user->name }}"></div>
                </div>
                <div class="comment_content">
                    <div class="comment_title_container d-flex flex-row align-items-center justify-content-start">
                        <div class="comment_author"><a href="#">{{ $comment->user->name }}</a></div>
                        <div class="comment_time ml-auto">{{ $comment->created_at->diffForHumans() }}</div>
                    </div>
                    <div class="comment_text">
                        <p>{{ $comment->comment }}</p>
                    </div>
                </div>
            </div>
        </li>
        @endforeach
    </ul>
</div>
