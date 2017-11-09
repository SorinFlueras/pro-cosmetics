jQuery(document).ready( function($){
    "use strict";

    $('.show-ywsl-box').on('click', function(e){
        e.preventDefault();
        $('.ywsl-box').slideToggle();
    });

    if (window.location.hash == '#_=_'){
        history.replaceState
            ? history.replaceState(null, null, window.location.href.split('#')[0])
            : window.location.hash = '';
    }
});