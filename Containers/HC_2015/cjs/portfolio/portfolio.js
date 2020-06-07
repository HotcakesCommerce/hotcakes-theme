$(function() {

  /* Portfolio */
  'use strict';
  try {
    var $container = $('.isotope');
    if($container.length && !$container.hasClass('.random')) {
      var first_scroll = true;
      $(window).scroll(function() {
          if(first_scroll) {
              $container.isotope();
              first_scroll = false;
          }
      });
      $(window).focus(function(){
          $container.isotope();
      });
      $container.isotope({
          itemSelector : '.isotope li',
          layoutMode: 'fitRows',
          animationOptions: {
              duration: 750,
              queue: false,
          }
      });
      $('.filter a').on('click', function() {
          $('.filter a').removeClass('selected');
          $(this).addClass("selected");
          var item = "";
          if( $(this).attr('data-filter') !== '*' ) {
              item = ".";
          }
          item += $(this).attr('data-filter');
          $container.isotope({ filter: item });
      });
      $(window).resize(function(){
          var item = "";
          if( $('.filter a.selected').attr('data-filter') !== '*' ) {
              item = ".";
          }
          item += $('.filter a.selected').attr('data-filter');
          $container.isotope({ filter: item });
          $(".isotope").isotope('layout');
      });

      $(document).ready(function(){
        $(window).load(function() {
          $(".isotope").isotope('layout');
        });
      });
    }
  } catch (e) { }
  
	$(window).load(function() {
	  $(".isotope").isotope('layout');
	});

});