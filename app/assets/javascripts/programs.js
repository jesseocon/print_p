$(document).ready(function(){
    var search_colors_path =    $("#program-form").data('colors-url');
    var search_seasons_path =   $("#program-form").data('seasons-url');
    var search_styles_path =    $("#program-form").data('styles-url');
    var search_assets_path =    $("#program-form").data('assets-url');
    
   $("#program_color_tokens").tokenInput( search_colors_path,{
      theme: "facebook", 
      prePopulate: $('#program_color_tokens').data('load'),
      hintText: "Fill in the color name",
      preventDuplicates:true 
   });
   
   $("#program_season_tokens").tokenInput( search_seasons_path, {
       theme: "facebook", 
       prePopulate: $('#program_season_tokens').data('load'),
       hintText: "Fill in the season name",
       preventDuplicates:true
   });
 
   $("#program_style_tokens").tokenInput( search_styles_path, {
      theme: "facebook",
      prePopulate: $('#program_style_tokens').data('load'),
      hintText: "Fill in the style name",
      preventDuplicates:true 
   });
   
   $("#program_asset_tokens").tokenInput( search_assets_path, {
      theme: "facebook", 
      prePopulate: $('#program_asset_tokens').data('load'),
      noResultsText: "Nothing found", 
      propertyToSearch: "fp_filename", 
      preventDuplicates: true,
      resultsFormatter: function(item){ return "<li><img width=50px height=50px src='" + item.fpurl + "'></li>";}
   });
});
