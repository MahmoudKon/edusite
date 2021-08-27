<div class="shopping_cart">
    <a class="dropdown-toggle nav-link" id="dropdown-flag" data-toggle="dropdown" aria-haspopup="true"
        aria-expanded="false">
        <span class="selected-language">
            {{ LaravelLocalization::getCurrentLocale() }}
        </span>
    </a>
    <div class="dropdown-menu" aria-labelledby="dropdown-flag">
        @foreach (LaravelLocalization::getSupportedLocales() as $localeCode =>
        $properties)
        <a class="dropdown-item" rel="alternate" hreflang="{{ $localeCode }}"
            href="{{ App::getLocale() !== $localeCode ? LaravelLocalization::getLocalizedURL($localeCode, null, [], true) : 'javascript:void(0)' }}">
            <i class="flag-icon flag-icon-{{ $properties['flag'] }}"></i>
            {{ $properties['native'] }}
        </a>
        @endforeach
    </div>
</div>

@auth
<div class="shopping_cart">
    <a class="dropdown-toggle nav-link" id="dropdown-flag" data-toggle="dropdown" aria-haspopup="true"
        aria-expanded="false">
        <span class="selected-language">
            {{ auth()->user()->name }}
        </span>
    </a>
    <div class="dropdown-menu" aria-labelledby="dropdown-flag">
        <a class="dropdown-item" href="{{ route('backend.dashboard') }}"> Dashboard </a>
        <a class="dropdown-item" href="{{ route('profile') }}"> Profile </a>

        <a href="javascript:void(0);" class="dropdown-item" style="color: red"
            onclick="event.preventDefault();document.getElementById('logout-form').submit();">Logout</a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST">@csrf</form>
    </div>
</div>
@endauth


@auth
<div class="shopping_cart ml-0">
    <li class="dropdown dropdown-notification nav-item dropdown-notifications" style="list-style: none">

        <a class="nav-link nav-link-label" id="favorite_click" href="javascript:void(0)" data-toggle="dropdown">
            <i class="fa fa-heart"> </i>
            <span class="badge badge-pill badge-default badge-danger badge-default badge-up badge-glow"
                id="favorites_count">{{ $auth_user_avorites_count }}</span>
        </a>
        <ul class="dropdown-menu" style="width: 400px; left: -115px !important; list-style: none">
            <li class="dropdown-menu-header">
                <h6 class="dropdown-header m-0 text-center p-0">
                    <span class="grey darken-2 text-center">Favorites</span>
                </h6>
                <hr class="mt-2 mb-0">
            </li>

            <div style="overflow-y: scroll;max-height: 350px;" id="favorites_list"></div>
        </ul>
    </li>
</div>
@endauth


@auth
<div class="shopping_cart ml-0">
    <li class="dropdown dropdown-notification nav-item dropdown-notifications" style="list-style: none">

        <a class="nav-link nav-link-label" id="noty_click" href="javascript:void(0)" data-toggle="dropdown">
            <i class="fa fa-bell"> </i>
            <span class="badge badge-pill badge-default badge-danger badge-default badge-up badge-glow"
                id="notify-count">{{ $unReadNotifications_count }}</span>
        </a>
        <ul class="dropdown-menu" style="width: 400px; left: -115px !important; list-style: none">
            <li class="dropdown-menu-header">
                <h6 class="dropdown-header m-0 text-center p-0">
                    <span class="grey darken-2 text-center">Notifications</span>
                </h6>
                <hr class="mt-2 mb-0">
            </li>

            <div style="overflow-y: scroll;max-height: 350px;" id="notification_list"></div>

            <li class="dropdown-menu-header">
                <a class="dropdown-header grey darken-2 text-center m-0 text-center p-0 pb-1"
                    href="{{ route('clear.notifications') }}">
                    <hr class="mb-3">
                    CLEAR NOTIFICATIONS
                </a>
            </li>
        </ul>
    </li>
</div>
@endauth
