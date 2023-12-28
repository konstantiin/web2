const slider = document.getElementById("resize_slider");
let zoom = 1;
let r_value = 3
redrawGraph(r_value, zoom);
function resize(){
    //alert(slider.value);
    zoom = 1 + slider.value/30;
    redrawGraph(r_value, zoom);
}

slider.addEventListener('change',resize);

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
    r_value = r_selector.val();
    $(this).attr("disabled", true);
    console.log("data sending...");
    console.log($(this).serialize());
    $.ajax({
        url: 'control',     method: "POST",
        data: 0,
        dataType: "html",

        success: function(data){
            console.log(data);
            $(".validate_button").attr("disabled", false);
            //window.localStorage.setItem("table",data["table"]);
            window.location.replace("result_page.jsp");
            //$("#result_table>tbody").html(data);
        },
        error: function(error){
            console.log(error);
            $(".validate_button").attr("disabled", false);
        },
    });
})
