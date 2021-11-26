$(function () {
    let pageHeight      = $(document).innerHeight();
    let countOfSteps    = Math.ceil(pageHeight / $(window).height());
    let stepHeight      = pageHeight / countOfSteps;
    let widnowScrollTop = $(window).scrollTop();
    let windowInnerHeight = $(window).innerHeight();

    $(window).resize(function() {
        init();
        $(window).scroll();
    });

    let addSpace     = 20;
    let footerHeight = $('footer').innerHeight() + addSpace;
    let navHeight    = $('nav').innerHeight() + addSpace;

    let goUpBtn         = `<button class="btn btn-light btn-sm" id="btn-up" disabled> <i class="fa fa-chevron-up"></i></button>`;
    let goDownBtn       = `<button class="btn btn-light btn-sm" id="btn-down"> <i class="fa fa-chevron-down"></i></button>`;
    $('body').append(goUpBtn+goDownBtn);

    let goUpBtnCss = {
        'position': 'fixed',
        'bottom': footerHeight,
        'right': '0',
        'left': 'unset',
        'opacity': '0',
        'transition': 'all .4s ease-in-out',
    }

    let goDownBtnCss = {
        'position': 'fixed',
        'top': navHeight,
        'right': '0',
        'left': 'unset',
        'opacity': '1',
        'transition': 'all .4s ease-in-out',
    }

    if ($('html').attr('lang') == 'ar') {
        goUpBtnCss.right    = 'unset';
        goUpBtnCss.left     = '0';
        goDownBtnCss.right  = 'unset';
        goDownBtnCss.left   = '0';
    }

    let goUp    = $('body').find('#btn-up');
    let goDown  = $('body').find('#btn-down');

    goUp.css(goUpBtnCss);
    goDown.css(goDownBtnCss);

    $(window).scroll(function(){
        widnowScrollTop = $(this).scrollTop();

        if(widnowScrollTop > 0){
            goUp.attr('disabled', false).css('opacity', 1);
            if (pageHeight == (widnowScrollTop + windowInnerHeight)) goDown.attr('disabled', true).css('opacity', 0);
            else goDown.attr('disabled', false).css('opacity', 1);
        } else {
            goUp.attr('disabled', true).css('opacity', 0);
            goDown.attr('disabled', false).css('opacity', 1);
        }
    });

    goUp.click(function(e) {
        e.preventDefault();
        $('html, body').animate({ scrollTop: 0 }, 1000);
    });

    goDown.click(function(e) {
        e.preventDefault();
        $('html, body').animate({ scrollTop: widnowScrollTop + stepHeight }, 1000);
    });

    function init()
    {
        pageHeight      = $(document).innerHeight();
        countOfSteps    = Math.ceil(pageHeight / $(window).height());
        stepHeight      = pageHeight / countOfSteps;
        widnowScrollTop = $(window).scrollTop();
        windowInnerHeight = $(window).innerHeight();
    }
});
