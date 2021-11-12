<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow ">
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation">

            {{-- START DASHBOARD LINK --}}
            <li class="nav-item {{ active('dashboard') }}">
                <a href="{{ active('dashboard') ? 'javascript:void(0)' : route('backend.dashboard') }}">
                    <i class="la la-home"></i> <span class="menu-title">Dashboard</span>
                </a>
            </li>
            {{-- START DASHBOARD LINK --}}

            @if (auth()->user()->is_admin)
            {{-- START ROLES LINKS --}}
            <li class="nav-item {{ active('roles') }}">
                <a href="{{ active('roles') ? 'javascript:void(0)' : route('backend.roles.index') }}">
                    <i class="la la-binoculars"></i> <span class="menu-title">Roles</span>
                </a>
            </li>
            {{-- START ROLES LINKS --}}
            @endif

            @if (auth()->user()->is_admin)
            {{-- START PERMISSIONS LINKS --}}
            <li class="nav-item {{ active('permissions') }}">
                <a href="{{ active('permissions') ? 'javascript:void(0)' : route('backend.permissions.index') }}">
                    <i class="la la-hand-stop-o"></i> <span class="menu-title">Permissions</span>
                </a>
            </li>
            {{-- START PERMISSIONS LINKS --}}
            @endif

            @if (auth()->user()->is_admin)
            {{-- START CATEGORIES LINKS --}}
            <li class="nav-item {{ active('categories') }}">
                <a href="{{ active('categories') ? 'javascript:void(0)' : route('backend.categories.index') }}">
                    <i class="la la-list"></i> <span class="menu-title">Categories</span>
                </a>
            </li>
            {{-- START CATEGORIES LINKS --}}
            @endif

            @if (auth()->user()->is_admin)
            {{-- START TAGS LINKS --}}
            <li class="nav-item {{ active('tags') }}">
                <a href="{{ active('tags') ? 'javascript:void(0)' : route('backend.tags.index') }}">
                    <i class="la la-tags"></i> <span class="menu-title">Tags</span>
                </a>
            </li>
            {{-- START TAGS LINKS --}}
            @endif

            {{-- START COURSES LINKS --}}
            <li class="nav-item has-sub {{ active('courses') ? 'open' : '' }}">
                <a href="javascript:void(0)">
                    <i class="la la-th-list"></i> <span class="menu-title">Courses</span>
                </a>
                <ul class="menu-content">
                    <li class="is-shown {{ active('courses', 'index') }}">
                        <a href="{{ active('courses', 'index') ? 'javascript:void(0)' : route('backend.courses.index') }}"
                            class="menu-item">
                            <i class="la la-eye"></i> <span class="menu-title">Show All Courses</span>
                        </a>
                    </li>

                    <li class="is-shown {{ active('courses', 'create') }}">
                        <a href="{{ active('courses', 'create') ? 'javascript:void(0)' : route('backend.courses.create') }}"
                            class="menu-item">
                            <i class="la la-plus-square"></i> <span class="menu-title">Create New Course</span>
                        </a>
                    </li>
                </ul>
            </li>
            {{-- END COURSES LINKS --}}

            {{-- START VIDEOS LINKS --}}
            <li class="nav-item has-sub {{ active('videos') ? 'open' : '' }}">
                <a href="javascript:void(0)">
                    <i class="la la-file-video-o"></i> <span class="menu-title">Videos</span>
                </a>
                <ul class="menu-content">
                    <li class="is-shown {{ active('videos', 'index') }}">
                        <a href="{{ active('videos', 'index') ? 'javascript:void(0)' : route('backend.videos.index') }}"
                            class="menu-item">
                            <i class="la la-eye"></i> <span class="menu-title">Show All Videos</span>
                        </a>
                    </li>

                    <li class="is-shown {{ active('videos', 'create') }}">
                        <a href="{{ active('videos', 'create') ? 'javascript:void(0)' : route('backend.videos.create') }}"
                            class="menu-item">
                            <i class="la la-plus-square"></i> <span class="menu-title">Create New Video</span>
                        </a>
                    </li>
                </ul>
            </li>
            {{-- END VIDEOS LINKS --}}

            @if (auth()->user()->is_admin)
            {{-- START USERS LINKS --}}
            <li class="nav-item has-sub {{ active('users') ? 'open' : '' }}">
                <a href="javascript:void(0)">
                    <i class="la la-users"></i> <span class="menu-title">Users</span>
                </a>
                <ul class="menu-content">
                    <li class="is-shown {{ active('users', 'index') }}">
                        <a href="{{ active('users', 'index') ? 'javascript:void(0)' : route('backend.users.index') }}"
                            class="menu-item">
                            <i class="la la-eye"></i> <span class="menu-title">Show All Users</span>
                        </a>
                    </li>

                    <li class="is-shown {{ active('users', 'create') }}">
                        <a href="{{ active('users', 'create') ? 'javascript:void(0)' : route('backend.users.create') }}"
                            class="menu-item">
                            <i class="la la-plus-square"></i> <span class="menu-title">Create New User</span>
                        </a>
                    </li>
                </ul>
            </li>
            {{-- END USERS LINKS --}}
            @endif

            {{-- START POSTS LINKS --}}
            <li class="nav-item has-sub {{ active('posts') ? 'open' : '' }}">
                <a href="javascript:void(0)">
                    <i class="la la-paper-plane"></i> <span class="menu-title">Posts</span>
                </a>
                <ul class="menu-content">
                    <li class="is-shown {{ active('posts', 'index') }}">
                        <a href="{{ active('posts', 'index') ? 'javascript:void(0)' : route('backend.posts.index') }}"
                            class="menu-item">
                            <i class="la la-eye"></i> <span class="menu-title">Show All posts</span>
                        </a>
                    </li>

                    <li class="is-shown {{ active('posts', 'create') }}">
                        <a href="{{ active('posts', 'create') ? 'javascript:void(0)' : route('backend.posts.create') }}"
                            class="menu-item">
                            <i class="la la-plus-square"></i> <span class="menu-title">Create New Post</span>
                        </a>
                    </li>
                </ul>
            </li>
            {{-- END POSTS LINKS --}}

            {{-- START COMMENTS LINKS --}}
            <li class="nav-item {{ active('comments') }}">
                <a href="{{ active('comments') ? 'javascript:void(0)' : route('backend.comments.index') }}">
                    <i class="la la-comment"></i> <span class="menu-title">Comments</span>
                </a>
            </li>
            {{-- END COMMENTS LINKS --}}

            @if (auth()->user()->is_admin)
            {{-- START SLIDERS LINKS --}}
            <li class="nav-item has-sub {{ active('sliders') ? 'open' : '' }}">
                <a href="javascript:void(0)">
                    <i class="la la-sliders"></i> <span class="menu-title">Sliders</span>
                </a>
                <ul class="menu-content">
                    <li class="is-shown {{ active('sliders', 'index') }}">
                        <a href="{{ active('sliders', 'index') ? 'javascript:void(0)' : route('backend.sliders.index') }}"
                            class="menu-item">
                            <i class="la la-eye"></i> <span class="menu-title">Show All Sliders</span>
                        </a>
                    </li>

                    <li class="is-shown {{ active('sliders', 'create') }}">
                        <a href="{{ active('sliders', 'create') ? 'javascript:void(0)' : route('backend.sliders.create') }}"
                            class="menu-item">
                            <i class="la la-plus-square"></i> <span class="menu-title">Create New Slider</span>
                        </a>
                    </li>
                </ul>
            </li>
            {{-- END SLIDERS LINKS --}}
            @endif
        </ul>
    </div>
</div>
