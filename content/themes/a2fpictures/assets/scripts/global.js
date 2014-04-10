jQuery(document).ready(function($) {
    
    var map;
    var office = new google.maps.LatLng(45.0039779, -93.250068);

    var MY_MAPTYPE_ID = 'custom_style';

    function initialize() {

        var featureOpts = [
        {
            stylers: [
            { saturation: -100 }
            ]
        },
        ];

        var mapOptions = {
            zoom: 15,
            center: office,
            mapTypeControlOptions: {
                mapTypeIds: [google.maps.MapTypeId.ROADMAP, MY_MAPTYPE_ID]
            },
            mapTypeId: MY_MAPTYPE_ID
        };
      
      
        map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);

        var styledMapOptions = {
            name: 'Custom Style'
        };
      
        var contentString = '<div id="content">'+
        '<div id="siteNotice">'+
        '</div>'+
        '<h1 style="font-weight:400;" class="firstHeading">A2F Pictures, LLC</h1>'+
        '<div id="bodyContent">'+
        '<p>1500 Jackson Street NE</p>' +
        '<p>Studio #294</p>' +
        '<p>Minneapolis, MN 55413</p>'+
        '</div>'+
        '</div>';
            
        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });
      
        var marker = new google.maps.Marker({
            position: office,
            map: map,
            title: 'A2F Pictures, LLC'
        });

        var customMapType = new google.maps.StyledMapType(featureOpts, styledMapOptions);

        map.mapTypes.set(MY_MAPTYPE_ID, customMapType);
      
        google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map,marker);
        });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
    
});