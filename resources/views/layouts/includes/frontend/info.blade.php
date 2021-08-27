<div class="top_bar">
    <div class="top_bar_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="top_bar_content d-flex flex-row align-items-center justify-content-start">
                        <ul class="top_bar_contact_list">
                            <li>
                                <div class="question">Have any questions?</div>
                            </li>
                            <li>
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <div>001-1234-88888</div>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o" aria-hidden="true"></i>
                                <div>info.deercreative@gmail.com</div>
                            </li>
                        </ul>
                        <div class="top_bar_login ml-auto">
                            <div class="login_button">
                                @auth
                                <a href="javascript:void(0);"
                                    onclick="event.preventDefault();document.getElementById('logout-form').submit();">Logout</a>
                                @else
                                <a href="{{ route('login') }}">Login | Register</a>
                                @endauth
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
