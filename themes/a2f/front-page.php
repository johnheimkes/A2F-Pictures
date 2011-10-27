<?php get_header(); ?>
<div id="content">
  
  <div class="slideshow">
    <div class="slideshow-feature">
      <img src="<?php bloginfo('template_url'); ?>/images/home-booking-summer-2012.jpg" alt="Now Booking Summer 2012." />
      <!-- <img src="<?php bloginfo('template_url'); ?>/images/home-your-words.jpg" alt="Your works, visualized." />
      <img src="<?php bloginfo('template_url'); ?>/images/home-reach-customers.jpg" alt="Reach your customers." />
      <img src="<?php bloginfo('template_url'); ?>/images/home-your-project.jpg" alt="Your project, your way." /> -->
    </div>
    
    <div class="slideshow-nav">
      <img src="<?php bloginfo('template_url'); ?>/images/home-booking-summer-2012-small.jpg" alt="Now Booking Summer 2012." />
      <img src="<?php bloginfo('template_url'); ?>/images/home-your-words-small.jpg" alt="Your works, visualized." />
      <img src="<?php bloginfo('template_url'); ?>/images/home-reach-customers-small.jpg" alt="Reach your customers." />
      <img src="<?php bloginfo('template_url'); ?>/images/home-your-project-small.jpg" alt="Your project, your way." />
    </div>
  </div>
  
  <!-- <? get_sidebar(); ?>
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
      <?php the_content(); ?>
    <?php endwhile; endif; ?> -->
</div>
<?php get_footer(); ?>