//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
$(document).on('ready',function () {
    $(window).scroll(function () {
        $(".slideanim").each(function () {
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }
        });
    });
})