$(document).ready(function(){
    if ( $("#invitation_invitation_pricing_id").length > 0 ){
        var id = "#invitation_invitation_pricing_id";
        setTotal(id);
    }
    
    $(".separator select").change(function(){
        var id = "#" + $(this).attr('id');
        setTotal(id);
        
    });
        
});


function finalPieceFormat(price, quantity){
    formatted_price = '$'+(price / quantity).toFixed(2)+'ea'
    return formatted_price;
}


function perPieceFormat(price, quantity){
    formatted_price = '<div>$'+ (price / quantity).toFixed(2) +' ea.</div';
    return formatted_price;
}


function getDropdownValue(get_url, id){
    $.ajax({
        url: get_url,
        dataType: 'json',
        success: function(json){
            $(id).data("price", json.price);
            var piece_price = perPieceFormat(json.price, json.quantity);
            var final_piece = finalPieceFormat(json.price, json.quantity);
            var total = sumAll();
            setQuantityBoxTotals(piece_price, json.quantity, final_piece, total);
            
        }
    });
}


function setBottomLineTotalOnlyWhenNoneValue(total){
    $('.f-total').html(total);
}


function setBottomLineTotalOnly(get_url, id){
    $.ajax({
        url: get_url, 
        dataType: 'json',
        success: function(json){
            $(id).data("price", json.price);
            total = sumAll();
            sumPriceAttributes();
            $('.f-total').html(total);
        }
    });
}


function setQuantityBoxTotals(piece_price, current_quantity, final_piece, total){
    $('.perPiece').html(piece_price);
    $('.currentQuantity').html(current_quantity);
    $('.finalPiece').html(final_piece);
    $('.f-total').html(total);
}


function setTotal(id){
    var current_value = $(id).val();

    if ( current_value.length > 0 && id == "#invitation_invitation_pricing_id"){
        
        var get_url = $(id).data('get-url') + "/" + current_value;
        getDropdownValue(get_url, id);
        
    }   else if ( current_value.length > 0 ){
        var get_url = $(id).data('get-url') + "/" + current_value;
        setBottomLineTotalOnly(get_url, id);
    } else {
        $(id).data("price", 0);
        var total = sumAll();
        setBottomLineTotalOnlyWhenNoneValue(total);
        
    }
}

// refactor this - this is stupid -- data price attribute only grabbing first data attribute when
// using trying to aggregate with a single data call
function sumAll(){
    var invitation_card_price = $("#invitation_invitation_pricing_id").data("price");
    var enclosure_card_price = $("#enclosure-cards_invitation_pricing_id").data("price");
    var escort_card_price = $("#escort-cards_invitation_pricing_id").data("price");
    var rsvp_card_price = $("#rsvps_invitation_pricing_id").data("price");
    var save_the_date_total = $("#save-the-dates_invitation_pricing_id").data("price");
    var thank_you_card_total = $("#thank-you-cards_invitation_pricing_id").data("price");
    var wedding_menu_total = $("#wedding-menus_invitation_pricing_id").data("price");
    
    var total = "$" + (invitation_card_price + 
                        enclosure_card_price + 
                        escort_card_price + 
                        rsvp_card_price + 
                        save_the_date_total + 
                        thank_you_card_total + 
                        wedding_menu_total).toFixed(2);
    return total;
}

