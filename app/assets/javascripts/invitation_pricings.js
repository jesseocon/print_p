$(document).ready(function(){
    if ( $("#invitation_invitation_pricing_id").length > 0 ){
        var id = "#invitation_invitation_pricing_id";
        getTotal(id);
    }
    
    $('#invitation_invitation_pricing_id').change(function(){
        getTotal();
    });
    
    $(".price").change(function(){
        var id = "#" + $(this).attr('id');
        setTotal(id);
    });
        
});



//refactor after the quantity box is finished. Delete comment when finished!
function getTotal(id){
    var current_value = $(id).val();
    var get_url = $(id).data('get-url') + "/" + current_value; 
    $.getJSON(get_url, function(data){
        var tests_html = '<div>$'+ (data.price / data.quantity).toFixed(2) +' ea.</div';
        var final_piece = '$'+(data.price / data.quantity).toFixed(2)+'ea'
        var total = '$'+data.price.toFixed(2);
        $('.perPiece').html(tests_html);
        $('.currentQuantity').html(data.quantity);
        $('.finalPiece').html(final_piece);
        $('#invitation_invitation_pricing_id').data("price", data.price);
        $('.f-total').html(total);
    });
}

function setTotal(id){
    var current_value = $(id).val();
    var get_url = $(id).data('get-url') + "/" + current_value;
    getDropdownValue(get_url, id);   
}

function setQuantityBoxTotals(piece_price, current_quantity, final_piece, total){
    $('.perPiece').html(piece_price);
    $('.currentQuantity').html(current_quantity);
    $('.finalPiece').html(final_piece);
    $('.f-total').html(total);
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

function perPieceFormat(price, quantity){
    formatted_price = '<div>$'+ (price / quantity).toFixed(2) +' ea.</div';
    return formatted_price;
}

function finalPieceFormat(price, quantity){
    formatted_price = '$'+(price / quantity).toFixed(2)+'ea'
}


function getCardTotal(id){
    current_value = $(id).val();
    get_url = $(id).data('get-url') + "/" + current_value;
    ajaxify(get_url, id);
}

function ajaxify(get_url, id){
    $.ajax({
        url: get_url,
        dataType: 'json',
        success: function (json) {
            $(id).data("price", json.price);
            total = sumAll();
            price = $(id).data("price");
            alert(total);
            alert(price);
        }
    });
}


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
