<?php
/*
Template Name: Portfolio
*/
?>
<?php get_header(); ?>
<div id="content">
  
  <ul class="subnav">
    <li class="subnav-item"><a class="subnav-link" href="<?php bloginfo('url'); ?>/portfolio/wedding">Wedding</a></li>
    <li class="subnav-item"><a class="subnav-link" href="<?php bloginfo('url'); ?>/portfolio/commercial">Commercial</a></li>
    <li class="subnav-item"><a class="subnav-link" href="<?php bloginfo('url'); ?>/portfolio/music-video">Music Video</a></li>
    <li class="subnav-item"><a class="subnav-link" href="<?php bloginfo('url'); ?>/portfolio/speciality">Speciality</a></li>
  </ul>
  
  <div class="portfolio-copy">
    <img src="<?php bloginfo('url'); ?>/images/video.jpg" alt="" />
  </div>
  
  <!-- <? get_sidebar(); ?>
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
      <?php the_content(); ?>
    <?php endwhile; endif; ?> -->
</div>
<?php get_footer(); ?>