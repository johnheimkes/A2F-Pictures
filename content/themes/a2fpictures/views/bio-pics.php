<div class="grid-col-12 page-head">
    <div class="grid-col-4 grid-col director-wrapper">
        <div class="director-image">
            <a href="<?php echo site_url('directors/trent-hilborn'); ?>#scrollto">
                <img src="<?php echo A2F_THEME_PATH_URL; ?>assets/images/bios/trent-color.jpg" alt="Trent Hilborn" <?php if ( is_page( 'trent-hilborn' ) ) { echo 'class="active-bio"'; } elseif ( is_page( array('mark-mazur', 'james-rautmann') ) ) { echo 'class="inactive-bio"'; } ?> />
            </a>
        </div>
    </div>
    
    <div class="grid-col-4 grid-col director-wrapper">
        <div class="director-image">
            <a href="<?php echo site_url('directors/mark-mazur'); ?>#scrollto">
                <img src="<?php echo A2F_THEME_PATH_URL; ?>assets/images/bios/mark-color.jpg" alt="Mark Mazur" <?php if ( is_page( 'mark-mazur' ) ) { echo 'class="active-bio"'; } elseif ( is_page( array('trent-hilborn', 'james-rautmann') ) ) { echo 'class="inactive-bio"'; } ?> />
            </a>
        </div>
    </div>
    
    <div class="grid-col-4 grid-col director-wrapper">
        <div class="director-image ">
            <a href="<?php echo site_url('directors/james-rautmann'); ?>#scrollto">
                <img src="<?php echo A2F_THEME_PATH_URL; ?>assets/images/bios/james-color.jpg" alt="James Rautmann" <?php if ( is_page( 'james-rautmann' ) ) { echo 'class="active-bio"'; } elseif ( is_page( array('trent-hilborn', 'mark-mazur') ) ) { echo 'class="inactive-bio"'; } ?> />
            </a>
        </div>
    </div>
</div>