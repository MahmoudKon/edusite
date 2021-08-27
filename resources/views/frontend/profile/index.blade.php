@extends('layouts.profile')

<title>Profile</title>

@section('content')
<div id="user-profile">
    <div class="row">
        <div class="col-12">
            <div class="card profile-with-cover">
                <div class="card-img-top img-fluid bg-cover height-300"
                    style="background: url('{{ $user->image_url }}') 50%;"></div>
                <div class="media profil-cover-details w-100 d-flex align-items-center">
                    <div class="media-left pl-2 pt-2">
                        <a href="#" class="profile-image">

                        </a>
                    </div>
                    <div class="media-body">
                        <nav class="navbar navbar-light navbar-profile align-self-end">
                            @if (auth()->user() && auth()->id() != $user->id)
                            <a href="{{ route('profile.follow', ['id' => $user->id]) }}"
                                class="user_click btn btn-primary btn-sm">
                                {{ auth()->user()->follows()->whereFollowId($user->id)->count() ? 'UNFollow' : 'Follow' }}
                            </a>
                            @endif

                            @if (auth()->id() === $user->id)
                            <a class="nav-link btn btn-sm btn-info active" id="baseIcon-tab21" data-toggle="tab"
                                aria-controls="tabIcon21" aria-expanded="true"
                                href="{{ route('profile.edit', ['id' => $user->id]) }}">
                                <i class="fas fa-edit"></i> Edit
                            </a>
                            @endif

                            <button class="navbar-toggler d-sm-none" type="button" data-toggle="collapse"
                                aria-expanded="false" aria-label="Toggle navigation"></button>
                            <nav class="navbar navbar-expand-lg ml-auto">
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="nav nav-tabs nav-underline">
                                        <li class="nav-item">
                                            <a class="nav-link {{ auth()->id() === $user->id ? '' : 'active' }}"
                                                id="baseIcon-tab21" data-toggle="tab" aria-controls="tabIcon21"
                                                aria-expanded="true" href="{{ route('profile.courses') }}">
                                                <i class="la la-list"></i> Courses
                                            </a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" id="baseIcon-tab22" data-toggle="tab"
                                                aria-controls="tabIcon21" aria-expanded="true"
                                                href="{{ route('profile.posts') }}">
                                                <i class="la la-paperclip"></i> Posts
                                            </a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" id="baseIcon-tab23" data-toggle="tab"
                                                aria-controls="tabIcon21" aria-expanded="true"
                                                href="{{ route('profile.videos') }}">
                                                <i class="la la-play"></i> Videos
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tab-content" id="load-data"></div>
</div>
@endsection

@section('script')
<script>
    $(function () {
        let param = '';
        if (window.location.href.split("?")[1])
            param = '?' + window.location.href.split("?")[1];

        function rows(url) {
            $('#load-data').addClass('load');
            $.ajax({
                url: url + param,
                type: "get",
                success: function(data, textStatus, jqXHR) {
                    $('#load-data').empty().append(data);
                },
                complete: function () { $('#load-data').removeClass('load'); }
            });
        } // AJAX CODE TO LOAD THE DATA TABLE

        rows($('a[aria-controls="tabIcon21"].active').attr('href'));

        $('a[aria-controls="tabIcon21"]').click(function (e) {
            e.preventDefault();
            $('a[aria-controls="tabIcon21"]').removeClass('active');
            $(this).addClass('active')
            rows($(this).attr('href'));
        });

        $('body').on('submit', 'form.submit-form', function(e) {
            e.preventDefault();
            let form = $(this);
            form.find('span.error').fadeOut(200);
            form.parent().addClass('load');
            $.ajax({
                url: form.attr('action'),
                type: "POST",
                data: new FormData($(this)[0]),
                dataType: 'JSON',
                processData: false,
                contentType: false,
                success: function (data, textStatus, jqXHR) {
                    form.trigger("reset");
                    const Toast = Swal.mixin();
                    Toast.fire({icon: 'success', text: data.message});
                    setTimeout(function () {
                        location.reload();
                    }, 500);
                },
                error: function (jqXhr, textStatus, errorMessage) {
                    if (jqXhr.status == 422) {
                        $.each(jqXhr.responseJSON.errors, function (key, val) {
                            form.find(`#${key}-error`).text(val).fadeIn(300);
                        });
                    } else {
                        const Toast = Swal.mixin();
                        Toast.fire({icon: 'error', text: jqXhr.responseJSON.message});
                    }
                },
                complete: function() { form.parent().removeClass('load'); }
            });
        }); // WHEN SUBMIT THE FORM SEND DATA TO CONTROLLER
    });
</script>
@endsection
