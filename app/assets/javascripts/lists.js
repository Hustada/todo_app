 $(document).ready(function() {

 /* Scroll on buttons */
    $('#scroll-to-items').click(function () {
       $('html, body').animate({scrollTop: $('.js--list-items').offset().top}, 1000); 
    });

});
