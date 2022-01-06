$(function () {
    $('.comment_form').submit(function (e) {
        e.preventDefault();
        let form = $(this);
        $.ajax({
            url: form.attr('action'),
            type: "POST",
            data: new FormData($(this)[0]),
            dataType: 'JSON',
            processData: false,
            contentType: false,
            success: function (data, textStatus, jqXHR) {
                form.trigger("reset");

                let comment = `<li id="${data.comment_id}">
                    <div class="comment_item d-flex flex-row align-items-start jutify-content-start">
                        <div class="comment_image">
                            <div><img src="${data.image}" alt="${data.name}"></div>
                        </div>
                        <div class="comment_content">
                            <div class="comment_title_container d-flex flex-row align-items-center justify-content-start">
                                <div class="comment_author"><a href="#">${data.name}</a></div>
                                <div class="comment_time ml-auto">${data.date}</div>
                            </div>
                            <div class="comment_text">
                                <p>${data.comment}</p>
                            </div>
                        </div>
                    </div>
                    </li>`;
                $('.comments_list').append(comment);
            },
        });
    });


    $(document).on('click', '.user_click', function (e) {
        e.preventDefault();
        let btn     = $(this);
        let icon    = $(this).find('i');
        let counter = $(this).find('.count');
        $.ajax({
            url: btn.attr('href'),
            type: "get",
            success: function (data, textStatus, jqXHR) {
                if (typeof data.favorites_count !== 'undefined')
                    $('#favorites_count').html(parseInt(data.favorites_count));
                if (data.status)
                    icon.removeClass('far').addClass('fas');
                else
                    icon.removeClass('fas').addClass('far');
                counter.html(data.count);
            },
        });
    });
});

function RunNotificationAjax(ele, url, method = 'POST')
{
    $.ajax({
        type: method,
        url: url,
        data: { _token: $('meta[name="csrf-token"]').attr('content') },
        success: function (response) {
            if (ele.text() < response) notificationSound.play();
            ele.text(response);
        }
    });
}
