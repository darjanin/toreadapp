

$(function() {
    $('.item-show-more').click(function(ev) {
        ev.preventDefault();
        $('#dialog').css('display', 'block');
        console.log('click');
    })
});