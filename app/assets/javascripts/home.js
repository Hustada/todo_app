 $(document).ready(function() {

 /* Scroll on buttons */
    $('.js--scroll-to-list').click(function () {
       $('html, body').animate({scrollTop: $('.js--section-list').offset().top}, 1000); 
    });

 /* Flash message JS */
 $('.flash-message').fadeIn('fast').delay(5000).fadeOut('slow');   

});
