(function($){
"use strict";

	/*******************************
	FitVids
	*******************************/
	function fitVidsFn(){
		$(".site-wrapper").fitVids();
	}

	/*******************************
	Mobile Navigation
	*******************************/
	function mobileNavigationFn(){
		$( ".primary-navigation .menu-item-has-children > a" ).after( '<span class="menu-item-arrow"></span>' );

		$( ".primary-navigation" ).clone().appendTo( ".site-mobile-navigation" );
		$( ".secondary-navigation" ).clone().appendTo( ".site-mobile-navigation" );

		$(".mobile-navigation-toggle").click(function(e){
			$("body").toggleClass("opened-site-navigation");
			e.preventDefault();
		});

		$(".site-navigation-overlay").click(function(e){
			$("body").toggleClass("opened-site-navigation");
			e.preventDefault();
		});

		$(".site-mobile-navigation .menu-item-arrow").click(function(e){
			if($(this).next())
			$(this).next().slideToggle();
			e.preventDefault();
		});
	}

	
	/*******************************
	Global Carousel Function
	*******************************/
	function commonCarouselFn(){
		$(".carousel").each(function(){
			var ITEMS = $(this).attr("data-items");    
			$(this).slick({
			  slidesToShow: ITEMS,
			  slidesToScroll: 1,
			  prevArrow : '<span class="slick-prev"></span>',
			  nextArrow : '<span class="slick-next"></span>',
			  rtl: RTL,
			  responsive: [
				{
				  breakpoint: 1200,
				  settings: {
					slidesToShow: 1
				  }
				}
				// You can unslick at a given breakpoint now by adding:
				// settings: "unslick"
				// instead of a settings object
			  ]
			});
		});
	}

	/*******************************
	Search-animation
	*******************************/
	function searchFn(){
		$("#search-trigger,#close-search").click(function(){
			$(".site-header-search").slideToggle();
		});
	}
	
	function scrollTop(){
		
		$.scrollUp({
			scrollName: 'scrollUp',      // Element ID
			//scrollDistance: 600,         // Distance from top/bottom before showing element (px)
			scrollFrom: 'top',           // 'top' or 'bottom'
			//scrollSpeed: 300,            // Speed back to top (ms)
			//easingType: 'linear',        // Scroll to top easing (see http://easings.net/)
			animation: 'fade',           // Fade, slide, none
			//animationSpeed: 200,         // Animation speed (ms)
			//scrollTrigger: false,        // Set a custom triggering element. Can be an HTML string or jQuery object
			//scrollTarget: false,         // Set a custom target element for scrolling to. Can be element or number
			scrollText: '&#xf077;', // Text for element, can contain HTML
			//scrollTitle: false,          // Set a custom <a> title if required.
			//scrollImg: false,            // Set true to use image
			activeOverlay: '#00FFFF',        // Set CSS color to display scrollUp active point, e.g '#00FFFF'
			zIndex: 9999           // Z-Index for the overlay
		});
	}
	
	$(document).ready(function(){
		fitVidsFn();
		mobileNavigationFn();
		commonCarouselFn();
		searchFn();
		scrollTop();
	});

})(jQuery);