@forelse ($notifications as $notification)
<li class="scrollable-container ps-container ps-active-y media-list w-100"
    {{ $notification->read_at == null ? 'style=background:#f1f1f1' : '' }}>
    <a href="{{ $notification->data['url'] }}" onclick="{{ $notification->markAsRead() }}" class="d-block">
        <div class="media p-2">
            <div class="media-body">
                @if (isset($notification->data['title']))
                <h6 class="media-heading mb-1" style="overflow: hidden;max-height: 40px;">
                    {{ $notification->data['title'] }}</h6>
                @endif
                <div class="d-flex">
                    <img src="{{ $notification->data['image'] }}" width="50px" height="50px"
                        style="border-radius: 50%; margin-top:5px;">
                    <p class="notification-text font-small-3 text-muted pl-3 pt-1 w-100">
                        <span class="text-muted d-block">{{ $notification->data['message'] }}</span>
                        <span class="text-muted">{{ $notification->data['date'] }}</span>
                    </p>
                </div>
            </div>
        </div>
    </a>
    <hr class="mb-0 mt-0">
</li>
@empty
<li class="py-3 w-100 text-center">No Notification
</li>
@endforelse
