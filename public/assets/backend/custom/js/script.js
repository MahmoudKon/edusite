$(function () {
    let notificationSound = new Audio(`${window.location.origin}/assets/notification-sound.mp3`);

    $.ajaxSetup({ headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') } }); // TO SEND THE CSRF TOKEN WITH AJAX REQUEST

    $(document).ajaxError(function(data, textStatus, jqXHR) {
        if (typeof textStatus.responseJSON !== 'undefined' && textStatus.responseJSON.message == 'Unauthenticated.') { location.reload(true); }
    }); // WHEN MAKE REQUEST AND THE RESPONSE IS ERROR THEN MAKE REFRESH THE PAGE

    $(document).ajaxComplete(function() { $('.load').removeClass('load'); }); // WHEN THE REQUEST IS COMPLETED WILL BE REMOVE THE CLASS LOAD

    document.addEventListener('wheel', (e) => (e.ctrlKey || e.metaKey) && e.preventDefault(), { passive: false });

    $('body').on('contextmenu', 'img', function (e) { e.preventDefault(); });
    $('.page-reload').click(function (e) {
        e.preventDefault();
        $('body').addClass('load');
        location.reload();
    });

    function rows() {
        $('#load-data').addClass('load');
        $.ajax({
            url: window.location.href,
            type: "get",
            success: function(data, textStatus, jqXHR) {
                $('#load-data').empty().append(data);
            },
            error: function(jqXHR) {
                if (jqXHR.readyState == 0)
                    return false;
                toast('File: ' + jqXhr.responseJSON.file + ' (Line: ' + jqXhr.responseJSON.line + ')', jqXhr.responseJSON.message, icon = 'error')
            },
            complete: function () { $('#load-data').removeClass('load'); initPluginElements();}
        });
    } // AJAX CODE TO LOAD THE DATA TABLE

    $('a[data-action="reload"]').click(function () {rows();});

    // THIS FOR CHECK IF THE PAGE HAVE TABLE OR NOT, IF HAVE THEN RUN THE AJAX CODE TO GET THE TABLE DATA
    if ($('#load-data').length) rows();

    if ($('.get-permissions').length && $('.get-permissions').val().length)
        getRolePermissions($('.get-permissions').val());

    $(document).on('change', '.get-permissions', function() {
        getRolePermissions($(this).val());
    });

    function getRolePermissions(roles)
    {
        let ele = $('#get-permissions');
        ele.addClass('load');
        $.ajax({
            url: '/get-role-permissions',
            type: "get",
            data: {"roles": roles},
            success: function (data, textStatus, jqXHR) {
                ele.empty().append(data).removeClass('load');
            },
            error: function(jqXhr) {
                if (jqXhr.readyState == 0)
                    return false;
                if (jqXhr.responseJSON.line) {
                    toast('File: ' + jqXhr.responseJSON.file + ' (Line: ' + jqXhr.responseJSON.line + ')', jqXhr.responseJSON.message)
                } else {
                    toast(jqXhr.responseJSON, title = null);
                }
            },
        });
    }

    $('body').on('click', '.show-modal-form', function (e) {
        e.preventDefault();
        let btn       = $(this),
            modal     = $('body').find('#load-form');
        if (! btn.attr('href')) {
            toast('the button must have href attribute!', title = null, icon = 'warning');
            return false;
        }

        let url = btn.hasClass('datatables-create-button') ? window.location.href + '/create' : btn.attr('href');

        modal.addClass('load');
        $.ajax({
            url: url,
            type: "GET",
            success: function (data, textStatus, jqXHR) {
                modal.find('.form-body').empty().append(data);
                modal.removeClass('load').modal('show');
                initPluginElements();
            },
            error: function(jqXhr) {
                if (jqXhr.readyState == 0)
                    return false;
                if (jqXhr.responseJSON.line) {
                    toast('File: ' + jqXhr.responseJSON.file + ' (Line: ' + jqXhr.responseJSON.line + ')', jqXhr.responseJSON.message)
                } else {
                    toast(jqXhr.responseJSON, title = null);
                }
            },
        });
    }); // PUSH FORM TO THE BOOTSTRAP MODAL

    $('body').on('submit', 'form.submit-form', function(e) {
        e.preventDefault();
        let form = $(this);

        form.find('span.error').fadeOut(100);
        form.parent().addClass('load');

        $.ajax({
            url: form.attr('action'),
            type: "POST",
            data: new FormData($(this)[0]),
            dataType: 'JSON',
            processData: false,
            contentType: false,
            success: function (data, textStatus, jqXHR) {
                if (data.redirect) {
                    return window.location = data.redirect;
                }
                $('.modal').modal("hide");
                toast(data.message, null, data.icon);
                form.trigger("reset");
                $("select").val('').trigger('change');
                rows();
                $('#recourds-count').text(data.count);
            },
            error: function (jqXhr, textStatus, errorMessage) {
                if (jqXhr.readyState == 0) {
                    return false;
                } else if (jqXhr.status == 422) {
                    $.each(jqXhr.responseJSON.errors, function (key, val) {
                        key = key.split('.');
                        if (key.length > 1) {
                            form.find(`input[name*='${key[0]}[${key[1]}][${key[2]}]']`).parent().next('span.error').text(val).fadeIn(300);
                        } else {
                            form.find(`#${key}-error`).text(val).fadeIn(300);
                        }
                    });
                } else {
                    if (jqXhr.responseJSON.line) {
                        toast('File: ' + jqXhr.responseJSON.file + ' (Line: ' + jqXhr.responseJSON.line + ')', jqXhr.responseJSON.message)
                    } else {
                        toast(jqXhr.responseJSON, title = null);
                    }
                }
            },
            complete: function() { form.parent().removeClass('load'); }
        });
    }); // WHEN SUBMIT THE FORM SEND DATA TO CONTROLLER

    $('body').on('submit', 'form.form-destroy', function (e) {
        e.preventDefault();
        let href = $(this).attr('action'), data = $(this).serialize();
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: href,
                    type: "post",
                    data: data,
                    success: function (data, textStatus, jqXHR) {
                        toast(data.message, null, data.icon)
                        rows();
                        $('#recourds-count').text(data.count);
                    },
                    error: function (jqXHR) {
                        if (jqXHR.readyState == 0)
                            return false;
                        toast('File: ' + jqXHR.responseJSON.file + ' (Line: ' + jqXHR.responseJSON.line + ')', jqXHR.responseJSON.message, icon = 'error')
                    },
                });
            }
        })
    }); // WHEN SUBMIT THE FORM TO DELETE THE ROW

    $("body").on("click", "input[type=checkbox]#check-all", function() {
        let bool = $(this);
        $('input[type=checkbox].check-box-id').each(function () {
            if(bool.prop('checked')) {
                $(this).prop('checked', true);
            } else {
                $(this).prop('checked', false);
            }
        });
    }); // WHEN CLICK ON TR MAKE THE CHILD CHECK-BOX IS TRUE OR FALSE

    $('body').on('click', '.multi-delete', function (e) {
        e.preventDefault();

        let ids = [], href = window.location.href + '/multidelete';
        $('input[type=checkbox].check-box-id:checked').each(function() { ids.push($(this).val()); });

        if (ids.length == 0) {
            Swal.fire({ title: 'please select some rows!', icon: 'warning' });
        } else {
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: href,
                        type: "post",
                        data: {id : ids},
                        success: function (data, textStatus, jqXHR) {
                            toast(data.message, null, data.icon)
                            rows();
                            $('#recourds-count').text(data.count);
                        },
                        error: function (jqXHR) {
                            if (jqXHR.readyState == 0)
                                return false;
                            toast('File: ' + jqXHR.responseJSON.file + ' (Line: ' + jqXHR.responseJSON.line + ')', jqXHR.responseJSON.message, icon = 'error')
                        },
                    });
                }
            });
        }

    }); // MULTI DELETE ROWS

    $('body').on('click', '.visibility-toggle', function (e) {
        e.preventDefault();
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, change it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: $(this).attr('href'),
                    type: "post",
                    success: function (data, textStatus, jqXHR) {
                        toast(data.message, null, data.icon)
                        rows();
                    },
                    error: function (jqXHR) {
                        if (jqXHR.readyState == 0)
                            return false;
                        toast('File: ' + jqXHR.responseJSON.file + ' (Line: ' + jqXHR.responseJSON.line + ')', jqXHR.responseJSON.message, icon = 'error')
                    },
                });
            }
        })
    }); // MAKE THE DATA IS VISIBILE OR NOT WHEN CLCIK ON THE BUTTON

    $('body').on('click', '.showRequest', function (e) {
        e.preventDefault();
        $('#showRequest').modal('show');
        let selectElement = $('#showRequest .modal-body');
        selectElement.addClass('load');
        $.ajax({
            url: $(this).attr('href'),
            type: "get",
            success: function (response, textStatus, jqXHR) {
                selectElement.closest('.modal').find('.modal-header .modal-tit b').empty().append(response.title);
                selectElement.empty().html(response.data);

                selectElement.find('nav, div.main-menu, footer').remove();
                selectElement.find('div.app-content').css('margin-left', 0);
                selectElement.find('a, button').attr('disabled', true).attr('href', '');
                selectElement.addClass('load');
            },
            error: function (jqXHR) {
                if (jqXHR.readyState == 0)
                    return false;
                toast('File: ' + jqXHR.responseJSON.file + ' (Line: ' + jqXHR.responseJSON.line + ')', jqXHR.responseJSON.message, icon = 'error')
            },
        });
    }); // SHOW RESPONSE CONTENT OF LOG

    function toast(message, title = null, icon = 'error', timer = 5000)
    {
        const Toast = Swal.mixin({
        toast: true,
        position: $('html').attr('lang') == 'ar' ? 'top-start' : 'top-end',
        showConfirmButton: false,
        showCloseButton: true,
        timer: timer,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
        })

        Toast.fire({
            icon: icon,
            title: title,
            text: message,
        })
    }

    function initPluginElements() {
        $(".select2").select2();
    }

    RunNotificationAjax();
    setInterval(() => { RunNotificationAjax(); }, 3000);

    function RunNotificationAjax()
    {
        $.ajax({
            type: "POST",
            url: `${window.location.origin}/get/notifications/count`,
            success: function (response) {
                if (parseInt($('#notification_count').text()) < parseInt(response)) {
                    getLastNotification();
                    notificationSound.play();
                }
                $('#notification_count').text(response);
            }
        });
    }


    function getLastNotification()
    {
        $.ajax({
            type: "POST",
            url: `${window.location.origin}/get/notifications/last`,
            success: function (response) {
                let data = JSON.parse(response.data);
                toast(data.message, null, null);
            }
        });
    }
});
