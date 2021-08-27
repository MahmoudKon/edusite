<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow p-3">
    <a href="/" class="btn btn-cyan btn-sm text-bold-700" style=" position: absolute;top: 0px;left: 0px;right:0px"><i
            class="fas fa-arrow-alt-circle-left"></i> Home</a>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation">
            <li class="nav-item text-center">
                <img src="{{ $user->image_url }}" class="rounded-circle img-border height-100" alt="Card image">
            </li>

            <li class="nav-item mt-2">
                <h3 class="text-center">
                    {{ $user->name }}
                </h3>
                <h3 class="text-center text-uppercase text-bold-700">
                    {{ $user->is_admin ? 'Admin' : 'Teacher' }}
                </h3>
            </li>

            <li class="nav-item mt-2">
                <h3 class="text-center">
                    Followers: <span id="followers_count">{{ $user->followers()->count() }}</span>
                </h3>
            </li>

            @if (!$user->job && !$user->bio && $user->id == auth()->id())
            <li class="nav-item mt-2 ">
                <h3 class="text-center font-small-3">
                    Please complete your data from
                    <a class="btn btn-outline-info btn-sm font-weight-bold font-medium-1" aria-controls="tabIcon21"
                        href="{{ route('profile.edit', ['id' => $user->id]) }}">here</a>
                </h3>
            </li>
            @endif

            @if ($user->job)
            <li class="nav-item mt-2">
                <h3 class="text-center">{{ $user->job }}</h3>
            </li>
            @endif

            @if ($user->bio)
            <li class="nav-item mt-2">
                <h3 class="text-center">{{ $user->bio }}</h3>
            </li>
            @endif
        </ul>
    </div>
</div>
