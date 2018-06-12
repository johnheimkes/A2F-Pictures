jQuery(document).ready( function() {


    /**
     * PARTICLE PARALLAX.
     */

    jQuery(window).scroll(function(e){
        var scrolled = jQuery(window).scrollTop();
        //jQuery('.lax').css('top',(50%-(scrolled*.125))+'px');
        jQuery('.particle-wrap').css('top',( 0+(scrolled*.6))+'px' );
        //jQuery('.lax').css('opacity',( 1-(scrolled*.003)) );
        //jQuery('.particle-wrap2').css('top',( 100+(scrolled*-.1))+'px' );
        jQuery('.particle-wrap3').css('top',( 0+(scrolled*.06))+'px' );
    });

    /**
     * SLICK CAROUSEL.
     */

    jQuery('.main-movie-wrapper').slick({
        autoplay: true,
        autoplaySpeed: 5000,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        asNavFor: '.movie-controller',
    });
    jQuery('.movie-controller').slick({
        slidesToShow: 4,
        slidesToScroll: 3,
        asNavFor: '.main-movie-wrapper',
        dots: false,
        arrows: false,
        centerMode: true,
        focusOnSelect: true,
        responsive: [

            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 4,

                }
            },
            {
                breakpoint: 960,
                settings: {
                    slidesToShow: 3,

                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,

                }
            }

        ]
    });

    /**
     * SLIDER STUFF.
     */


    jQuery('.movie-single').hover( function() {
        jQuery('.movie-play-button').toggleClass('fadein');
    });

    jQuery('.controller-single').click( function(e) {
        e.preventDefault();
        jQuery('.movie-single-info').show();
        jQuery('.slider-bg').show();
        jQuery('.single-movie').html();
        jQuery('.movie-single iframe').attr('src', '' );

    });

    jQuery('.slick-arrow').click( function(e) {
        e.preventDefault();
        jQuery('.movie-single iframe').attr('src', '' );
        jQuery('.movie-single-info').show();
        jQuery('.slider-bg').show();
        jQuery('.single-movie').html();

    });

    // Directors Menu
    jQuery('#menu-item-14 a').click(function(e){
        e.preventDefault();
        jQuery(this).toggleClass('active');
        jQuery('.header-sub-nav-2').removeClass('open');
        jQuery('.header-sub-nav').toggleClass('open');
        jQuery('#menu-item-606').removeClass('has-children');
    });

    // Content Menu
    jQuery('#menu-item-606 a').click(function(e){
        e.preventDefault();
        jQuery('.header-sub-nav').removeClass('open');
        jQuery('.header-sub-nav-2').toggleClass('open');
        jQuery('#menu-item-14').removeClass('has-children');
    });

    jQuery('.view-bio-button').click(function(e){
        e.preventDefault();
        jQuery(this).toggleClass('active');
        jQuery('.single-bio').slideToggle();
    });

    // Open Secondary Nav
    if ( jQuery('li.current-menu-item') ) {
        jQuery('li.current-menu-item').closest('.subnav-wraps').addClass('open');
    };


    if ( jQuery('.header-sub-nav').hasClass('open') ) {
        jQuery('#menu-item-14').addClass('has-children');
    };

    if ( jQuery('.header-sub-nav-2').hasClass('open') ) {
        jQuery('#menu-item-606').addClass('has-children');
    };




    /**
     * SMOOTH SCROLL TO BOTTOM.
     */
    jQuery(".footer-contact").click(function() {
        jQuery("html, body").animate({ scrollTop: jQuery(document).height() }, "slow");
        return false;
    });



});