/* --------------------------- TmplateTrip JS ------------------------------ */
$(document).ready(function () {
	/* Start Homepage tab active JS */
		$('.tab-content > div:first-child').addClass('active');

	/* End Homepage tab active JS  */
	
	/* Go to Top JS START */
		$("#goToTop").hide();
		$(function () {
			$(window).scroll(function () {
				if ($(this).scrollTop() > 150) {
					$('.goToTop').fadeIn();
				} else {				
					$('.goToTop').fadeOut();			
				}	
		});	
	
			// scroll body to 0px on click
			$('.goToTop').click(function () {
				$('body,html').animate({
					scrollTop: 0
				}, 1000);
				return false;
			});
		});


	/* Go to Top JS END */
$( "#ttcmsgallery .ttgallary_content .ttgallary_img .ttblock-content .ttbloglinks > a" ).attr( "data-lightbox", "example-set1" );			


		 /* ----------- carousel For FeatureProduct ----------- */
	 var ttfeature = $("#ttfeature-carousel");
      ttfeature.owlCarousel({
     	 items :4, //10 items above 1000px browser width
     	 itemsDesktop : [1200,4], 
     	 itemsDesktopSmall : [991,3], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });

      // Custom Navigation Events
      $(".ttfeature_next").click(function(){
        ttfeature.trigger('owl.next');
      })

      $(".ttfeature_prev").click(function(){
        ttfeature.trigger('owl.prev');
      })

	  
	  
	  
	   /* ----------- carousel For Testimonial ----------- */

	   

	 var tttestimonial = $("#tttestimonial-carousel");
      tttestimonial.owlCarousel({
  		 autoPlay : true,
     	 items : 1, //10 items above 1000px browser width
     	 itemsDesktop : [1200,1], 
     	 itemsDesktopSmall : [991,1], 
     	 itemsTablet: [767,1], 
     	 itemsMobile : [480,1] 
      });

      // Custom Navigation Events
      $(".tttestimonial_next").click(function(){
        tttestimonial.trigger('owl.next');
      })

      $(".tttestimonial_prev").click(function(){
        tttestimonial.trigger('owl.prev');
      })




	   /* ----------- carousel For Manufaturer ----------- */

	   

	 var ttmanufaturer = $("#ttmanufacturer-carousel");
      ttmanufaturer.owlCarousel({
     	 items : 5, //10 items above 1000px browser width
     	 itemsDesktop : [1200,5], 
     	 itemsDesktopSmall : [991,4], 
		 itemsTablet: [767,3], 
     	 itemsMobile : [480,2] 
      });

      // Custom Navigation Events
      $(".ttmanufacturer_next").click(function(){
        ttmanufaturer.trigger('owl.next');
      })

      $(".ttmanufacturer_prev").click(function(){
        ttmanufaturer.trigger('owl.prev');
      })

	  

	   /* ----------- carousel For NewProduct ----------- */

	   

	 var ttnewproduct = $("#ttnewproduct-carousel");
      ttnewproduct.owlCarousel({
    	 items :4, //10 items above 1000px browser width
     	 itemsDesktop : [1200,4], 
     	 itemsDesktopSmall : [991,3], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });

      // Custom Navigation Events

      $(".ttnewproduct_next").click(function(){
        ttnewproduct.trigger('owl.next');
      })

      $(".ttnewproduct_prev").click(function(){
        ttnewproduct.trigger('owl.prev');
      })

	  

	    /* ----------- carousel For SpecialProduct ----------- */

		

	 var ttspecial = $("#ttspecial-carousel");
      ttspecial.owlCarousel({
     	 items :3, //10 items above 1000px browser width
     	 itemsDesktop : [1200,3], 
		 itemsDesktopSmall : [991,3], 
		 itemsTablet: [767,2], 
		 itemsMobile : [480,1] 
      });

      // Custom Navigation Events

      $(".ttspecial_next").click(function(){
        ttspecial.trigger('owl.next');
      })

      $(".ttspecial_prev").click(function(){
        ttspecial.trigger('owl.prev');
      })

	  

	   /* ----------- carousel For SpecialProduct ----------- */

	   

	 var ttbestseller = $("#ttbestseller-carousel");
      ttbestseller.owlCarousel({
     	 items :4, //10 items above 1000px browser width
     	 itemsDesktop : [1200,4], 
     	 itemsDesktopSmall : [991,2], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });

      // Custom Navigation Events
      $(".ttbestseller_next").click(function(){
        ttbestseller.trigger('owl.next');
      })
      $(".ttbestseller_prev").click(function(){
        ttbestseller.trigger('owl.prev');
      })

	  	/* ----------- carousel For AccessoriesProduct ----------- */

 

	 var ttaccessories = $("#ttaccessories-carousel");
      ttaccessories.owlCarousel({
     	 items : 4, //10 items above 1000px browser width
     	 itemsDesktop : [1200,4], 
     	 itemsDesktopSmall : [991,3], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });

      // Custom Navigation Events

      $(".ttaccessories_next").click(function(){
        ttaccessories.trigger('owl.next');
      })

     $(".ttaccessories_prev").click(function(){
        ttaccessories.trigger('owl.prev');
      })


	/* ----------- carousel For Productscategory ----------- */

 
	 var ttproductscategory = $("#ttproductscategory-carousel");
      ttproductscategory.owlCarousel({
     	 items : 4, //10 items above 1000px browser width
     	 itemsDesktop : [1200,4], 
     	 itemsDesktopSmall : [991,3], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });

      // Custom Navigation Events
      $(".ttproductscategory_next").click(function(){
        ttproductscategory.trigger('owl.next');
      })
      $(".ttproductscategory_prev").click(function(){
        ttproductscategory.trigger('owl.prev');
      })


		/* ----------- carousel For Cross-selling ----------- */


	 var ttcrossselling = $("#ttcrossselling-carousel");
      ttcrossselling.owlCarousel({
     	 items : 4, //10 items above 1000px browser width
     	 itemsDesktop : [1200,4], 
     	 itemsDesktopSmall : [991,3], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });

      // Custom Navigation Events
      $(".ttcrossselling_next").click(function(){
        ttcrossselling.trigger('owl.next');
      })

      $(".ttcrossselling_prev").click(function(){
        ttcrossselling.trigger('owl.prev');
      })


		 /* ----------- carousel For Productpage Banner ----------- */

	 var ttproductbanner = $("#ttproductbanner-carousel");
      ttproductbanner.owlCarousel({
     	 items : 1, //10 items above 1000px browser width
    	 itemsDesktop : [1200,1], 
     	 itemsDesktopSmall : [991,1], 
     	 itemsTablet: [767,1], 
	   	 itemsMobile : [480,1],
		 autoPlay : 3000
      });

      // Custom Navigation Events

      $(".ttproductbanner_next").click(function(){
        ttproductbanner.trigger('owl.next');
      })

      $(".ttproductbanner_prev").click(function(){
        ttproductbanner.trigger('owl.prev');
      })


 /* ----------- carousel For SmartBlog ----------- */

	  
	var ttblog = $("#ttsmartblog-carousel");
      ttblog.owlCarousel({
		// autoPlay : true,
     	 items :2, //10 items above 1000px browser width
     	 itemsDesktop : [1200,2], 
     	 itemsDesktopSmall : [991,2], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });

      // Custom Navigation Events

      $(".ttsmartblog_next").click(function(){
        ttblog.trigger('owl.next');
      })
      $(".ttsmartblog_prev").click(function(){
        ttblog.trigger('owl.prev');
      })
	
		var ttcmsgallery = $("#ttcmsgallery-carousel");
      ttcmsgallery.owlCarousel({
			autoPlay : true,
     	 items :6, //10 items above 1000px browser width
     	 itemsDesktop : [1200,5], 
     	 itemsDesktopSmall : [991,4], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });
	  
	  
		var ttcategory = $("#ttcategory-carousel");
     ttcategory.owlCarousel({
		// autoPlay : true,
     	 items :2, //10 items above 1000px browser width
     	 itemsDesktop : [1200,2], 
     	 itemsDesktopSmall : [991,2], 
     	 itemsTablet: [767,2], 
     	 itemsMobile : [480,1] 
      });
	
	$("#layer_cart").prependTo("#header");
	$("#layer_cart").wrap("<div class='container ttlayer-cart'></div>");

	
	  
	  /* ------------ Start TemplateTrip Parallax JS ------------ */
 
		var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent);
		if(!isMobile) {
			if($(".parallex").length){  $(".parallex").sitManParallex({  invert: false });};    
		}else{
			$(".parallex").sitManParallex({  invert: true });
		}	

	/* ------------ End TemplateTrip Parallax JS ------------ */  
	
  
	/*---------------- Search ---------------- */
	
	
	$(".ttsearch_button").click(function() {
		
		$('#page').toggleClass('ttsearch-fixed');
		$('.ttheader .header_nav').toggleClass('col-sm-12 ttsearch-active');
		$('.ttheader .header_nav .nav').toggleClass('container ttsearch-container');
		$('.ttsearchtoggle').parent().toggleClass('active');
		$('.ttsearchtoggle').toggle('fast', function() {
		});
		$('#search_query_top').attr('autofocus', 'autofocus').focus();
	});
	
		
			
	/*---------------- Currency, Language and Premenant Link JS---------------- */
		$('.header_user_info .ttuserheading').click(function(event){
			$(this).toggleClass('active');
			event.stopPropagation();
			$(".ttuser_link").slideToggle("fast");
		});
		$(".ttuser_link").on("click", function (event) {
			event.stopPropagation();
		});
		$('.ttpermanent-link').appendTo('.header_user_info .ttuser_link');
		
		$('#languages-block-top').appendTo('.header_user_info .ttuser_link');
		$('#currencies-block-top').appendTo('.header_user_info .ttuser_link');
	
	
	
	/*--------Start  ttcmsgallery-js------------------------------*/
	
		$('.tabs .tab-links a').on('click', function(e)  {
		var currentAttrValue = $(this).attr('href');
			$('.tabs ' + currentAttrValue).show().siblings().hide();
			$(this).parent('li').addClass('active').siblings().removeClass('active');
			e.preventDefault();
		});
	
	/*--------End  ttcmsgallery-js------------------------------*/


	 
	
	
	
	/* start counter js*/
	
		 $('.counter-title').counterUp({
			delay: 10,
			time: 1000
		});
		 
	/* end counter js*/	
	
	
	$('.header_user_info .ttuser_link .ttpermanent-link ul#header_links').removeClass('toogle_content');

});	  


/* Start Homepage header JS */	

function header() {	
 if (jQuery(window).width() > 1200){
     if (jQuery(this).scrollTop() > 700)
        {    
            jQuery('.full-header').addClass("fixed");
 
    	}else{
      	 jQuery('.full-header').removeClass("fixed");
      	}
    } else {
      jQuery('.full-header').removeClass("fixed");
      }
}
 
$(document).ready(function(){header();});
jQuery(window).resize(function() {header();});
jQuery(window).scroll(function() {header();});

/* End Homepage header JS */	



/*****************start animation script*******************/

	function hb_animated_contents() {
		$(".hb-animate-element:in-viewport").each(function (i) {
		var $this = $(this);
		if (!$this.hasClass('hb-in-viewport')) {
			setTimeout(function () {
				$this.addClass('hb-in-viewport');
				}, 300 * i);
			}
		});
	}
		
	$(document).ready(function(){
		hb_animated_contents();
	});

	$(window).scroll(function () {
		hb_animated_contents();
	});
	$(window).load(function () {
		hb_animated_contents();
	});
	
/*****************end animation script*******************/




	function responsivecolumn()
	{
		if ($(document).width() <= 991)
		{
			$('.container #columns_inner #left_column').appendTo('.container #columns_inner');
		}
		else if($(document).width() >= 992)
		{
			$('.container #columns_inner #left_column').prependTo('.container #columns_inner');
		}
	}
	$(document).ready(function(){responsivecolumn();});
	$(window).resize(function(){responsivecolumn();});

/* --------------------------- End TmplateTrip JS ------------------------------ */
