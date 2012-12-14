$(document).ready(function(){
    var search_colors_path =    $("#thank-you-card-form").data('colors-url');
    var search_seasons_path =   $("#thank-you-card-form").data('seasons-url');
    var search_styles_path =    $("#thank-you-card-form").data('styles-url');
    
   $("#thank_you_card_color_tokens").tokenInput( search_colors_path,{
      theme: "facebook", 
      prePopulate: $('#thank_you_card_color_tokens').data('load'),
      hintText: "Fill in the color name",
      preventDuplicates:true 
   });
   
   $("#thank_you_card_season_tokens").tokenInput( search_seasons_path, {
       theme: "facebook", 
       prePopulate: $('#thank_you_card_season_tokens').data('load'),
       hintText: "Fill in the season name",
       preventDuplicates:true
   });
 
   $("#thank_you_card_style_tokens").tokenInput( search_styles_path, {
      theme: "facebook",
      prePopulate: $('#thank_you_card_style_tokens').data('load'),
      hintText: "Fill in the style name",
      preventDuplicates:true 
   });
   
});
