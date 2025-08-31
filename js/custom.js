/*------------------------------------------------------------------
 * Theme Name: bredh sefar - Multipurpose clientarea WHMCS theme 
 * Author: coodiv (nedjai mohamed) (nbames.mohamed@gmail.com)
 * Author URI: https://coodiv.net/
 * Author URI: https://themeforest.net/user/coodiv
 * Theme Version: 1.0
 -------------------------------------------------------------------*/

'use strict'

$(function () {
	$('.coodiv-features-box-black-color-carousel').flickity({
    contain: true,
    pageDots: true,
	cellAlign: 'left',
	wrapAround: true,
    prevNextButtons: false,
	responsive: {
		  0: {
			items: 1,
		  },
		  340: {
			items: 1,
			margin: 20
		  },
		  350: {
			items: 1,
			margin: 20
		  },
		  490: {
			items: 1,
			margin: 20
		  },
		  780: {
			items: 2,
			margin: 20
		  },
		  1000: {
			items: 3,
			loop: true,
			margin: 20
		  }
		}
  	});
});
// pertners carousel //
$(document).ready(function() {
	$('.pertners-carousel').slick({
    loop: false,
    nav: false,
	dots: false,
	autoplay: false,
	arrows: false,
    responsive:{
        0:{
            slidesToShow:3
        },
        600:{
            slidesToShow:3
        },
        1000:{
            slidesToShow:6
        }
    }
    });
});
	
// header slider carousel //
$(function () {
	$('.carousel-main').flickity({
    prevNextButtons: false,
	pageDots: true,
	autoPlay: true
});

// 2nd carousel, navigation
$('.carousel-nav').flickity({
    asNavFor: '.carousel-main',
    contain: true,
    pageDots: false,
    prevNextButtons: false,
	responsive: {
		  0: {
			items: 1,
		  },
		  340: {
			items: 1,
			margin: 20
		  },
		  350: {
			items: 1,
			margin: 20
		  },
		  490: {
			items: 1,
			margin: 20
		  },
		  780: {
			items: 2,
			margin: 20
		  },
		  1000: {
			items: 3,
			loop: true,
			margin: 20
		  }
		}
  	});
});	


$('#monthly-yearly-chenge a').on('click', function() {
    $(this).addClass('active').siblings().removeClass('active');
	
	if (jQuery('.monthly-price').hasClass('active')) {
		$('.second-pricing-table-price').addClass('monthly');
		$('.second-pricing-table-price').removeClass('yearly');
	}
	
	if (jQuery('.yearli-price').hasClass('active')) {
		$('.second-pricing-table-price').addClass('yearly');
		$('.second-pricing-table-price').removeClass('monthly');
	}
});
	
	
$(document).ready(function() {
	
if ($("body").hasClass("rtl-mode")) {
	if(jQuery(".sevrices-plans").length > 0) {
		$('.sevrices-plans-content').slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			dots: true,
			rtl: true,
			autoplay: true,
			autoplaySpeed: 2000,
			asNavFor: '.sevrices-plans-content-nav'
		});
		$('.sevrices-plans-content-nav').slick({
			slidesToShow: 4,
			slidesToScroll: 1,
			asNavFor: '.sevrices-plans-content',
			dots: false,
			rtl: true,
			arrows: false,
			centerMode: false,
			focusOnSelect: true
		});
	}
	if(jQuery(".main-homepage-plans-slider").length > 0) {
		$('.main-homepage-plans-slider').slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			dots: false,
			rtl: true,
			autoplay: false,
			fade: true,
			adaptiveHeight: true,
			asNavFor: '.services-box-tabs-box',
		});
		$('.services-box-tabs-box').slick({
			slidesToShow: 5,
			asNavFor: '.main-homepage-plans-slider',
			dots: false,
			infinite: true,
			rtl: true,
			arrows: false,
			centerMode: true,
			focusOnSelect: true,
			responsive: [{
				breakpoint: 557,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1,
				}
			}, {
				breakpoint: 768,
				settings: {
					slidesToShow: 2,
				}
			}, {
				breakpoint: 991,
				settings: {
					slidesToShow: 3,
				}
			}]
		});
	}
	if(jQuery(".single-slide-boxes-slider").length > 0) {
		$('.single-slide-boxes-slider').slick({
			dots: false,
			infinite: true,
			speed: 500,
			slidesToShow: 4,
			rtl: true,
			slidesToScroll: 1,
			arrows: true,
			appendArrows: '.single-slide-boxes-arrows',
			responsive: [{
				breakpoint: 1200,
				settings: {
					slidesToShow: 3,
				}
			}, {
				breakpoint: 992,
				settings: {
					slidesToShow: 2,
				}
			}, {
				breakpoint: 480,
				settings: {
					slidesToShow: 1
				}
			}]
		});
	}
   }else{
	if(jQuery(".sevrices-plans").length > 0) {
		$('.sevrices-plans-content').slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			dots: true,
			autoplay: true,
			autoplaySpeed: 2000,
			asNavFor: '.sevrices-plans-content-nav'
		});
		$('.sevrices-plans-content-nav').slick({
			slidesToShow: 4,
			slidesToScroll: 1,
			asNavFor: '.sevrices-plans-content',
			dots: false,
			arrows: false,
			centerMode: false,
			focusOnSelect: true
		});
	}
	if(jQuery(".main-homepage-plans-slider").length > 0) {
		$('.main-homepage-plans-slider').slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			dots: false,
			autoplay: false,
			fade: true,
			adaptiveHeight: true,
			asNavFor: '.services-box-tabs-box',
		});
		$('.services-box-tabs-box').slick({
			slidesToShow: 5,
			asNavFor: '.main-homepage-plans-slider',
			dots: false,
			infinite: true,
			arrows: false,
			centerMode: true,
			focusOnSelect: true,
			responsive: [{
				breakpoint: 557,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1,
				}
			}, {
				breakpoint: 768,
				settings: {
					slidesToShow: 2,
				}
			}, {
				breakpoint: 991,
				settings: {
					slidesToShow: 3,
				}
			}]
		});
	}
	if(jQuery(".single-slide-boxes-slider").length > 0) {
		$('.single-slide-boxes-slider').slick({
			dots: false,
			infinite: true,
			speed: 500,
			slidesToShow: 4,
			slidesToScroll: 1,
			arrows: true,
			appendArrows: '.single-slide-boxes-arrows',
			responsive: [{
				breakpoint: 1200,
				settings: {
					slidesToShow: 3,
				}
			}, {
				breakpoint: 992,
				settings: {
					slidesToShow: 2,
				}
			}, {
				breakpoint: 480,
				settings: {
					slidesToShow: 1
				}
			}]
		});
	}
    }
	
})


$(document).ready(function() {
    $("#pricing-deck-trigger").on("click", function(e) {
        var getActive = $(e.target).attr("data-active");
        $(e.target).addClass("active");
        $(e.target).siblings().removeClass("active");
        if (getActive == "yearly-active" && !$("#pricing-card-deck").hasClass(getActive)) {
            $("#pricing-card-deck").addClass(getActive);
            $("#pricing-card-deck").removeClass("monthly-active");
        }
        if (getActive == "monthly-active" && !$("#pricing-card-deck").hasClass(getActive)) {
            $("#pricing-card-deck").addClass(getActive);
            $("#pricing-card-deck").removeClass("yearly-active");
        }
    })
	
	$("[data-pricing-trigger]").on("click", function(e) {
        $(e.target).toggleClass("active");
        var target = $(e.target).attr("data-target");
        console.log($(target).attr("data-value-active") == "monthly");
        if ($(target).attr("data-value-active") == "monthly") {
            $(target).attr("data-value-active", "yearly");
        } else {
            $(target).attr("data-value-active", "monthly");
        }
    })	
	
	AOS.init();
    window.addEventListener('load', AOS.refresh);
	
	$("select:not(.dataTables_length select):not(#stateselect)").niceSelect();
	
	
	$('.search-btn-header').on('click', function(e) {
        if (!$('.emyui-searchbar-header').hasClass('show')) {
            $('.emyui-searchbar-header').addClass("show");
        }else{
			$('.emyui-searchbar-header').removeClass("show");
		}
    });
	
	$('.emyui-searchbar-header .searching-close').on('click', function(e) {
        if ($('.emyui-searchbar-header').hasClass('show')) {
            $('.emyui-searchbar-header').removeClass("show");
        }
    });
	
	
	$('.header-lang.dropdown').on('show.bs.dropdown', function() {
			$("html").addClass('overflow-hidden');
			$("header.site-header").addClass('white-bg light-mode-texts');
			$("header.site-header").removeClass('dark-mode-texts');
		})
		$('.header-lang.dropdown').on('hide.bs.dropdown', function() {
			$("html").removeClass('overflow-hidden');
			if(!$('header.site-header').hasClass('top-header-fixed')) {
				if(!$('header.site-header').hasClass('light-color-header')) {
					$("header.site-header").removeClass('light-mode-texts');
					$("header.site-header").addClass('dark-mode-texts');
				}
				$("header.site-header").removeClass('white-bg');
			}
	})
	
	
    var navs = document.querySelectorAll('.order-form-menu-scroller .nav');
	var navstwo = document.querySelectorAll('.nav-scroller-subpages .nav');
	if (jQuery(".order-form-menu-scroller .nav").length > 0) {
		for ( var i = 0, length = navs.length; i < length; i++ ) {
        var nav = navs[i];
        new Flickity( nav, {
          cellAlign: 'center',
          freeScroll: true,
          prevNextButtons: false,
          pageDots: false,
          contain: true
        });
		}
	}

	
	$('#btnCheckAvailability').on('click', function(e) {
		if( $(".domain-search-input-header").val().length > 0 ) {
		$('html, body').animate({
    	scrollTop: $("#order-standard_cart").offset().top-80
        }, 500);
		}
	});
	
	
	$(document).ready(function() {
	if ($('#order-standard_cart').attr("class") == "emyui-cart-aws") {
        $('body').addClass('using-emyui-cart-aws');
    } else {
		$('body').addClass('not-using-emyui-cart-aws');
		
		if ($('body').hasClass("emyui-aws-theme")) {
		$('#order-standard_cart').addClass('container');
        }
	
	}
	
	

	
    });
	
	
	$('.search-btn').on('click', function(e) {
	var delayInMilliseconds = 100;
	var delayInMillisecondstwo = 200;
	setTimeout(function() {
	if ( $('#DomainSearchResults').css('display') == 'block'){
		$('.domain-ltds-prices-confi-page').addClass("d-none");
    }
	}, delayInMilliseconds);
	
	setTimeout(function() {
	if ( $('#DomainSearchResults').css('display') == 'block'){
		$('html, body').animate({
    	scrollTop: $("#DomainSearchResults").offset().top-120
    	}, 500);
    }
	}, delayInMillisecondstwo);
	
	
	});
	
	$('.domain-productconfigiration-options-item').on('click', function(e) {
	$('html, body').animate({
    	scrollTop: $("#selection-options-domains").offset().top-80
        }, 500);
	});
	

	

	if (jQuery(".nav-scroller-subpages .nav").length > 0) { 
	  for ( var i = 0, length = navstwo.length; i < length; i++ ) {
        var nav = navstwo[i];
        new Flickity( nav, {
          cellAlign: 'center',
          freeScroll: true,
          prevNextButtons: false,
          pageDots: false,
          contain: true
        });
      }
	}  
	  

	
	$('.searchtoggle').on('click', function(e) {
        if (!$('.search-box-topics-sidebar').hasClass('show')) {
            $('.search-box-topics-sidebar').addClass("show");
        }else{
			$('.search-box-topics-sidebar').removeClass("show");
		}
    });
	
	
	
	$(document).click(function () {
    $('.navbar-collapse').collapse('hide');
    });
	
	if (jQuery("#popuppfirsttime").length > 0) { 
	(function() {
    var visited = localStorage.getItem('visited');
    if (!visited) {
        document.getElementById("popuppfirsttime").style.visibility = "visible";
        localStorage.setItem('visited', true);
    }
    })();
	}
	
	
	$('body').append('<div id="toTop" class="btn"><span class="feather icon-chevron-up"></span></div>');
    $(window).scroll(function() {
    if ($(this).scrollTop() != 0) {
    $('#toTop').fadeIn();
	$('.live-support-trigger').fadeIn();
    } else {
    $('#toTop').fadeOut();
	$('.live-support-trigger').fadeOut();
    }
    });
    $('#toTop').click(function() {
    $("html, body").animate({
    scrollTop: 0
    }, 600);
    return false;
    });
	
	
	//-- animated scroll -- //
	$(document).on('click', '.animated-link', function (event) {
		event.preventDefault();
		var nav_height = 170;		
		if ($($.attr(this, 'href')).offset())
		{
			$('html, body').animate({			
				scrollTop: $($.attr(this, 'href')).offset().top - nav_height
			}, 500);
		}
  	});
	
	$('.popover-host-features').popover({
     trigger: 'focus'
    });
	
	// page loeader //	
    $('.preloader').delay(100).fadeOut('slow');

	
	// dropdown screen fit //
	$(function () {
    $(".drop-menu-item.dropdown").on('mouseenter mouseleave', function (e) {
        if ($('.coodiv-menu-dropdown', this).length) {
            var elm = $('.coodiv-menu-dropdown', this);
            var off = elm.offset();
            var l = off.left;
            var w = elm.width();
            var docW = $(window).width();

            var isEntirelyVisible = (l + w <= docW);

            if (!isEntirelyVisible) {
                $(elm).addClass('invers-drop-down-menu');
            } else {
				$(elm).removeClass('invers-drop-down-menu');

            }
        }
    });
    });
	
	
	// fixed header layout //	
	$(window).scroll(function() {
    var scroll = $(window).scrollTop();
	if ($('header.site-header').hasClass('fixed-header-layout')) {
    if (scroll >= 50) {
    $("header.site-header").addClass("top-header-fixed white-bg light-mode-texts");
	$("header.site-header").removeClass('dark-mode-texts');
    } else {
    $("header.site-header").removeClass("top-header-fixed");
	$("header.site-header").removeClass("white-bg");
	if (!$('header.site-header').hasClass('light-color-header')) {
	$("header.site-header").removeClass("light-mode-texts");
	$("header.site-header").addClass('dark-mode-texts');
	}
    }
	}
    });

    $('.dropdown-menu a.dropdown-toggle').on('click', function(e) {
        if (!$(this).next().hasClass('show')) {
            $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
        }
        var $subMenu = $(this).next(".dropdown-menu");
        $subMenu.toggleClass('show');

        $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
            $('.dropdown-submenu .show').removeClass("show");
        });

        return false;
    });
	
	$(".goto").on('click', function(event) {
        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 2000, function() {
                window.location.hash = hash;
            });
        }
    });

	$('.main-menu .nav-item').hover(
       function(){ $(this).addClass('menu-hover') },
       function(){ $(this).removeClass('menu-hover') }
    )
	
})


//-- language search filtre -- //
function FilterLanguageHeader() {
    var input, filter, ul, li, a, i;
    input = document.getElementById('lang-search-input');
    filter = input.value.toUpperCase();
    ul = document.getElementById("lang-box-ul");
    li = ul.getElementsByTagName('li');
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].classList.remove("disabled");
        } else {
            li[i].classList.add("disabled");
        }
    }
};  
	
$(window).load(function() {
    setTimeout(function() {
        $('#loading').fadeOut(500);
    }, 1000);
    setTimeout(function() {
        $('#loading').remove();
    }, 2000);
})

