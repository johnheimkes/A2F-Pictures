jQuery(document).ready(function() {
    $('#slideshow-feature').cycle({ 
        fx:     'fade',
        speed:  1000,
        timeout: 5000,
        pager:  '#slideshow-nav',
        pagerAnchorBuilder: function(idx, slide) { 
            // return selector string for existing anchor 
            return '#slideshow-nav li:eq(' + idx + ') a'; 
        }     
    }); 

    $('#direct').click(function() { 
        $('#nav li:eq(2) a').trigger('click'); 
        return false; 
    });
});