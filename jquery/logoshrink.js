$(window).scroll(function () {
    if ($(document).scrollTop() == 0) {
        $('#Logo').removeClass('tiny');
    } else {
        $('#Logo').addClass('tiny');
    }
});
