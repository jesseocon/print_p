$(document).ready(function(){
    var search_colors_path =            $("#m-form").data('colors-url');
    var search_seasons_path =           $("#m-form").data('seasons-url');
    var search_styles_path =            $("#m-form").data('styles-url');
    var search_assets_path =            $("#m-form").data('assets-url');
    var search_rsvps_path =             $("#m-form").data('rsvps-url');
    var search_menus_path =             $("#m-form").data('menus-url');
    var search_programs_path =          $("#m-form").data('programs-url');
    var search_thank_you_cards_path =   $("#m-form").data('thank-you-cards-url');
    var search_invitations_path =       $("#m-form").data('invitations-url');
    
   $("#invitation_color_tokens").tokenInput( search_colors_path,{
      theme: "facebook", 
      prePopulate: $('#invitation_color_tokens').data('load'),
      hintText: "Fill in the color name",
      preventDuplicates:true 
   });
   
   $("#invitation_season_tokens").tokenInput( search_seasons_path, {
       theme: "facebook", 
       prePopulate: $('#invitation_season_tokens').data('load'),
       hintText: "Fill in the season name",
       preventDuplicates:true
   });
 
   $("#invitation_style_tokens").tokenInput( search_styles_path, {
      theme: "facebook",
      prePopulate: $('#invitation_style_tokens').data('load'),
      hintText: "Fill in the style name",
      preventDuplicates:true 
   });
   
   $("#invitation_asset_tokens").tokenInput( search_assets_path, {
      theme: "facebook", 
      prePopulate: $('#invitation_asset_tokens').data('load'),
      noResultsText: "Nothing found", 
      propertyToSearch: "fp_filename", 
      preventDuplicates: true,
      resultsFormatter: function(item){ return "<li><img width=50px height=50px src='" + item.fpurl + "'></li>";}
   });
   
   $("#invitation_rsvp_tokens").tokenInput( search_rsvps_path, {
      theme: "facebook",
      prePopulate: $("#invitation_rsvp_tokens").data('load'),
      noResultsText: "Nothing found", 
      hintTExt: "Fill in the RSVP name",
      preventDuplicates: true 
   });
   
   $("#invitation_menu_tokens").tokenInput( search_menus_path, {
      theme: "facebook",
      prePopulate: $("#invitation_menu_tokens").data('load'),
      noResultsText: "Nothing found", 
      hintTExt: "Fill in the Menu name",
      preventDuplicates: true 
   });
   
   $("#invitation_program_tokens").tokenInput( search_programs_path, {
      theme: "facebook",
      prePopulate: $("#invitation_program_tokens").data('load'),
      noResultsText: "Nothing found", 
      hintTExt: "Fill in the Program name",
      preventDuplicates: true 
   });
   
   $("#invitation_thank_you_card_tokens").tokenInput( search_thank_you_cards_path, {
      theme: "facebook",
      prePopulate: $("#invitation_thank_you_card_tokens").data('load'),
      noResultsText: "Nothing found", 
      hintText: "Fill in the Program name",
      preventDuplicates: true 
   });
   
   $("#invitation_invitation_tokens").tokenInput( search_invitations_path, {
      theme: "facebook", 
      prePopulate: $("#invitation_invitation_tokens").data('load'),      
      noResultsText: "Nothing found",
      hintText: "Fill in the invitation name",
      preventDuplicates: true
   });
   
   $(".related-stationary a").click(function(e){
       e.preventDefault();
       
       $(".related-stationary a").removeClass('selected');
       $(".related-stationary a").children().css('opacity', '1')
       
       $(this).addClass('selected');
       $(this).children().css('opacity', '.4');
       
       var photo
       var photo_fullsize = $(this).attr('href');
       
       $('.main-image').html('<img alt="Original" src="'+photo_fullsize+'"/>');
   });


});

















