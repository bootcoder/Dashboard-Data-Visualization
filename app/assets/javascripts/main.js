$(document).ready(function(){
  console.log("Document Ready");
  var navStats = $("#nav_stats");
  var navStatsPartial = $("#nav_stats_partial");

  $(navStats).on('click', function(event){
    console.log("CLICKDD ME!");
    event.preventDefault();
    $(navStatsPartial).append()
    $(navStatsPartial).toggle();
  })

  // if ( $(window).width() < 1023 ) {
  //   $('.box-team').removeClass('wow')
  //   $('.mobile-js').removeClass('max-400')
  //   $('.mobile-js').removeClass('max-500')
  //   $('.mobile-js').addClass('max-90P')

  // }

});
    
