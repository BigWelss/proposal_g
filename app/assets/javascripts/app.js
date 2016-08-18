$(document).ready(function(){
    $('.icon-menu').click(function(){
        $('.menu').animate({
            right: '0px'
        }, 200);
    });

    $('.icon-close').click(function(){
        $('.menu').animate({
            right: '-285px'
        }, 200);
    });
});