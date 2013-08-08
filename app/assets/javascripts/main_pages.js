// jquery-isotope-rooms.js

$(document).ready(init);


function init() {
    $('#cu_feed').isotope({
  masonry: {
    // columnWidth: 240
  }
});

    var things = $('#cu_feed');
    filters = {};

    things.isotope({
        itemSelector : '.cheer_up'
    });

    // $("a[data-cheer_up_id]").on("click", function(event) {
    //     event.preventDefault(); // prevent the click from linking anywhere
    //     var href = $(this).data('href');
    //     $.get(href, {
    //         success:function(){
    //             console.log("The js file is being called.");
    //                 $.getJSON( '/cheer_ups/downvote', function(json_obj){
    //             console.log(json_obj);
    //             });
    //         }
    //     });

    // });

    // when everything loads, make the "all" options selected
    $('.filter a[data-filter-value=""]').addClass('selected');

    $(".cheer_up").each(function() {
        $(this).css("background-color", get_random_color());
    });
    // filter buttons
    $('.filter a').click(
    function(e){
        e.preventDefault();
        var clicked_filter = $(this);

        // if the clicked link is already selected, don't do anything
        if ( clicked_filter.hasClass('selected') ) {
            return;
        }

        var optionSet = clicked_filter.parents('.option-set');

        // get rid of the ".selected" class on any links in this group and put it on the clicked link
        optionSet.find('.selected').removeClass('selected');
        clicked_filter.addClass('selected');

        // store the filters in the filters object, indexed by the group they're in
        // i.e. filters.category = 'animal'
        var group = optionSet.attr('data-filter-group');
        filters[ group ] = clicked_filter.attr('data-filter-value');

        // convert the filters object into an array of strings which are CSS class selectors
        var filters_to_use = [];
        for ( var group in filters ) {
             filters_to_use.push( filters[ group ] );
        }

        // smash the array together to get a big selector which will filter all elements with the filter classes
        var selector = filters_to_use.join('');

        // run the filter on the isotope element
        things.isotope({ filter: selector });
    });

    $('#cu_feed').isotope({
    // Isotope ordering by rating
    // Get all ratings
    itemSelector : '#cu_feed',
    getSortData : {
        data_rating : function ( $elem ) {
            return $elem.attr('data-rating');
        }
    }
});



$('#sort-by a').click(function(){
  // get href attribute, minus the '#'
  var sortName = $(this).attr('href').slice(1);
  console.log("clicked sort option button");
  console.log("run this command - $('#cu_feed').isotope({ sortBy : sortName })");
  console.log("get this ouput - ");
  console.log($('#cu_feed').isotope({ sortBy : sortName }));
  $('#cu_feed').isotope({ sortBy : sortName });
  return false;
});

}

    var color_set = new Array();
        color_set[0] = '17FF83';
        color_set[1] = '2AD3E8';
        color_set[2] = '6193FF';
        color_set[3] = 'AC63E8';
        color_set[4] = 'FF3792';
        color_set[5] = '2EC540';
        color_set[6] = 'FFDB3A';
        color_set[7] = 'FF6430';
        color_set[8] = 'F03323';
        color_set[9] = '023E73';
        color_set[10] = '035E73';
        color_set[11] = '03A688';
        color_set[12] = 'ABD904';
        color_set[13] = 'F2EA77';
        color_set[14] = '026BB5';
        color_set[15] = '00AAE3';
        color_set[16] = 'D93D52';
        color_set[17] = '593A71';
        color_set[18] = '43A19F';
        color_set[19] = 'F58E03';
        color_set[20] = 'FF5300';
        color_set[21] = 'E81402';
        color_set[22] = '80064D';
        color_set[23] = '450459';


function get_random_color() {
    var color = '#';
        color += color_set[Math.floor(Math.random()*color_set.length)];
    return color;
}

