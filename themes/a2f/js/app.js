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
	
	$('#widget').hide();
	
	// $('#toggle-video').click( function() {
	//     $('#accordion-video').toggle();
	// });
});

function showme(id, linkid) {
    var divid = document.getElementById(id);
    var toggleLink = document.getElementById(linkid);
    if (divid.style.display == 'block') {
        toggleLink.innerHTML = 'More &raquo;';
        divid.style.display = 'none';
    }
    else {
        toggleLink.innerHTML = '&laquo; Less';
        divid.style.display = 'block';
    }
}
