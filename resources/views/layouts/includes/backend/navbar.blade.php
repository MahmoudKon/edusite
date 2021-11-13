<nav
    class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow fixed-top navbar-semi-light bg-info navbar-shadow">
    <div class="navbar-wrapper">
        <div class="navbar-header">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item mobile-menu d-md-none mr-auto"><a
                        class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i
                            class="ft-menu font-large-1"></i></a></li>
                <li class="nav-item">
                    <a class="navbar-brand" href="{{ route('/') }}">
                        <img class="brand-logo" alt="modern admin logo" src="{{ path('images/logo/logo.png') }}">
                        <h3 class="brand-text">Modern Admin</h3>
                    </a>
                </li>
                <li class="nav-item d-md-none">
                    <a class="nav-link open-navbar-container" data-toggle="collapse" data-target="#navbar-mobile"><i
                            class="la la-ellipsis-v"></i></a>
                </li>
            </ul>
        </div>
        <div class="navbar-container content">
            <div class="collapse navbar-collapse" id="navbar-mobile">
                <ul class="nav navbar-nav mr-auto float-left">
                    <li class="nav-item d-none d-md-block">
                        <a class="nav-link nav-menu-main menu-toggle hidden-xs" data-toggle="tooltip" data-original-title="Toggle Menu" href="#">
                            <i class="ft-menu"></i>
                        </a>
                    </li>
                    <li class="nav-item d-none d-md-block">
                        <a class="nav-link nav-menu-main menu-toggle page-reload hidden-xs" data-toggle="tooltip" data-original-title="Reload The Page" href="#">
                            <i class="ft-rotate-cw"></i>
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-nav float-right">

                    {{-- START AUTH LINKS --}}
                    <li class="dropdown dropdown-user nav-item">
                        <a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">
                            <span class="mr-1">Hello,
                                <span class="user-name text-bold-700">{{ auth()->user()->name }}</span>
                            </span>
                            <span class="avatar avatar-online">
                                <img src="{{ auth()->user()->image_url }}" alt="avatar"><i></i></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item primary" href="{{ route('profile') }}">
                                <i class="fa fa-edit"></i> Edit Profile
                            </a>

                            <a class="dropdown-item primary" href="{{ route('backend.posts.create') }}">
                                <i class="fa fa-plus"></i> Create New Post
                            </a>

                            <a class="dropdown-item primary" href="{{ route('backend.courses.create') }}">
                                <i class="fa fa-plus"></i> Create New Course
                            </a>

                            <a class="dropdown-item primary" href="{{ route('backend.videos.create') }}">
                                <i class="fa fa-plus"></i> Create New Video
                            </a>
                            <div class="dropdown-divider"></div>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST">
                                @csrf
                                <button type="submit" class="dropdown-item btn red">
                                    <i class="ft-power"></i> Logout
                                </button>
                            </form>
                        </div>
                    </li>
                    {{-- END AUTH LINKS --}}

                    <!-- BEGIN SELECT THE LANGUAGES -->
                    <li class="dropdown dropdown-language nav-item">
                        <a class="dropdown-toggle nav-link" id="dropdown-flag" href="javascript:void(0)"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="flag-icon flag-icon-{{ LaravelLocalization::getCurrentFlagName() }}"></i>
                            <span class="selected-language"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdown-flag">
                            @foreach (LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                            <a class="dropdown-item" rel="alternate" hreflang="{{ $localeCode }}"
                                href="{{ App::getLocale() !== $localeCode ? LaravelLocalization::getLocalizedURL($localeCode, null, [], true) : 'javascript:void(0)' }}">
                                <i class="flag-icon flag-icon-{{ $properties['flag'] }}"></i>
                                {{ $properties['native'] }}
                            </a>
                            @endforeach
                        </div>
                    </li>
                    <!-- END SELECT THE LANGUAGES -->


                    <!-- START NOTIFICATIONS SECTION -->
                    <li class="dropdown dropdown-notification nav-item">
                        <a id="noty_click" class="nav-link nav-link-label" href="#" data-toggle="dropdown"><i
                                class="ficon ft-bell"></i>
                            <span class="badge badge-pill badge-default badge-danger badge-default badge-up badge-glow">
                                {{ $unReadNotifications_count }}{{-- Comming From Cache in Middleware --}}
                            </span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                            <li class="dropdown-menu-header">
                                <h6 class="dropdown-header m-0">
                                    <span class="grey darken-2">Notifications</span>
                                </h6>
                                @if ($unReadNotifications_count)
                                <span id="notify-count"
                                    class="notification-tag badge badge-default badge-danger float-right m-0">
                                    {{ $unReadNotifications_count }} New
                                </span>
                                @endif
                            </li>

                            <li class="scrollable-container media-list w-100">
                                <div id="notification_list"></div>
                            </li>
                            <li class="dropdown-menu-footer">
                                <a class="dropdown-item text-muted text-center red"
                                    href="{{ route('clear.notifications') }}">Delete all notifications
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATIONS SECTION -->
                </ul>
            </div>
        </div>
    </div>
</nav>
