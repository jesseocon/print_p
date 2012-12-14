$(document).ready(function(){
    var search_colors_path =    $("#save-the-date-form").data('colors-url');
    var search_seasons_path =   $("#save-the-date-form").data('seasons-url');
    var search_styles_path =    $("#save-the-date-form").data('styles-url');
    var search_assets_path =    $("#save-the-date-form").data('assets-url');
    
   $("#save_the_date_color_tokens").tokenInput( search_colors_path,{
      theme: "facebook", 
      prePopulate: $('#save_the_date_color_tokens').data('load'),
      hintText: "Fill in the color name",
      preventDuplicates:true 
   });
   
   $("#save_the_date_season_tokens").tokenInput( search_seasons_path, {
       theme: "facebook", 
       prePopulate: $('#save_the_date_season_tokens').data('load'),
       hintText: "Fill in the season name",
       preventDuplicates:true
   });
 
   $("#save_the_date_style_tokens").tokenInput( search_styles_path, {
      theme: "facebook",
      prePopulate: $('#save_the_date_style_tokens').data('load'),
      hintText: "Fill in the style name",
      preventDuplicates:true 
   });
   
   $("#save_the_date_asset_tokens").tokenInput( search_assets_path, {
      theme: "facebook", 
      prePopulate: $('#save_the_date_asset_tokens').data('load'),
      noResultsText: "Nothing found", 
      propertyToSearch: "fp_filename", 
      preventDuplicates: true,
      resultsFormatter: function(item){ return "<li><img width=50px height=50px src='" + item.fpurl + "'></li>";}
   });
});
