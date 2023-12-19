let selected_x = $(".selected_x");
$(".x").click(function() {
    selected_x.prop("class", "x");
    $(this).prop("class", "selected_x");

    selected_x = $(this)
});
function generateError(){
    alert("R value must be integer between 0 and 5");
}
$(".submit").click(function (){
    let r_selector = $(".r")
    if (r_selector.is(":invalid")){
        generateError();
        return;
    }
    let x_value = selected_x.val();
    let y_value = $('input[name="y_coordinate"]:checked').val();
    let r_value = r_selector.val();



})
