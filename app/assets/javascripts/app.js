$(document).ready(function(){
    $('.icon-menu').click(function(){
        $('.menu').animate({
            right: '0px'
        }, 200);
        $('#foreground-div').addClass('shadow');
    });

    $('.icon-close').click(function(){
        $('.menu').animate({
            right: '-285px'
        }, 200);
        $('#foreground-div').removeClass('shadow');
    });
});