function closeBanner() {
    $("body").animate(
        {
          top: "-90%",
          opacity: "0.0",
        },1000,
        function(){$("body").css("display", "none");});
}
function openBanner() {
    $("body").animate(
        {
          top: "-90%",
          opacity: "1.0",
        },700,
        function(){$("body").css("display", "block");});
}
window.addEventListener('message', function (event) {
    var fivem = event.data;

	if (fivem.message == "show") {openBanner()

    result = "<dont style='color:rgba(255, 0, 0, 1.0); text-decoration: none'>" + fivem.zone + "</dont>";

        document.getElementById("text").innerHTML =" " + fivem.label + "&#91;" + result + "&#93;";
    }
    
	if (fivem.message == "hide") {closeBanner();}
});