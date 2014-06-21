<?php
/**
 * A2f Pictures Theme
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Sidebar
 * @author John Heimkes IV <john@markupisart.com>
 * @version 1.0
 */
?>

<div class="sidebar grid-col grid-col-3">
    <ul>
        <?php
        wp_list_pages(array(
            'post_type'   => 'page',
            'child_of'    => 6,
            'sort_column' => 'menu_order',
            'title_li'    => ''
        ));
        ?>
    </ul>
</div>