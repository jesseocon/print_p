$(document).ready(function(){
    var search_colors_path =    $("#rsvp-form").data('colors-url');
    var search_seasons_path =   $("#rsvp-form").data('seasons-url');
    var search_styles_path =    $("#rsvp-form").data('styles-url');
    var search_assets_path =    $("#rsvp-form").data('assets-url');
    
   $("#rsvp_color_tokens").tokenInput( search_colors_path,{
      theme: "facebook", 
      prePopulate: $('#rsvp_color_tokens').data('load'),
      hintText: "Fill in the color name",
      preventDuplicates:true 
   });
   
   $("#rsvp_season_tokens").tokenInput( search_seasons_path, {
       theme: "facebook", 
       prePopulate: $('#rsvp_season_tokens').data('load'),
       hintText: "Fill in the season name",
       preventDuplicates:true
   });
 
   $("#rsvp_style_tokens").tokenInput( search_styles_path, {
      theme: "facebook",
      prePopulate: $('#rsvp_style_tokens').data('load'),
      hintText: "Fill in the style name",
      preventDuplicates:true 
   });
   
   $("#rsvp_asset_tokens").tokenInput( search_assets_path, {
      theme: "facebook", 
      prePopulate: $('#rsvp_asset_tokens').data('load'),
      noResultsText: "Nothing found", 
      propertyToSearch: "fp_filename", 
      preventDuplicates: true,
      resultsFormatter: function(item){ return "<li><img width=50px height=50px src='" + item.fpurl + "'></li>";}
   });
});
