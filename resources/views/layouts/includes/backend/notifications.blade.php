@forelse ($notifications as $notification)
<a href="{{ $notification->data['url'] }}" onclick="{{ $notification->markAsRead() }}">
    <div class="media">
        <div class="media-left align-self-center">
            <img class="avatar avatar-online" src='{{ $notification->data['image'] }}' style="width: 50px !important">
        </div>
        <div class="media-body">
            @if (isset($notification->data['title']))
            <h6 class="media-heading">{{ $notification->data['title'] }}</h6>
            @endif
            <p class="notification-text font-small-3 text-muted">
                {{ $notification->data['message'] }}
            </p>
            <small>
                <time class="media-meta text-muted"
                    datetime="2015-06-11T18:29:20+08:00">{{ $notification->data['date'] }}</time>
            </small>
        </div>
    </div>
</a>
@empty
<div class="media">
    <p class="notification-text font-small-3 text-muted">No Notifications</p>
</div>
@endforelse
