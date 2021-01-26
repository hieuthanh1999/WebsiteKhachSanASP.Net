/* toggle menu onscroll */
$(window).scroll(function() {
	if ($(document).scrollTop() > 0) {
		$('nav').addClass('navbar-custom');
		$('nav').removeClass('navbar-1');
	} else {
		$('nav').removeClass('navbar-custom');
		$('nav').addClass('navbar-1');
	}
});
/* show hide menu mobile */
function openNav() {
	document.getElementById("thisSidenav").style.width = "100%";
}

function closeNav() {
	document.getElementById("thisSidenav").style.width = "0";
}
new WOW().init();
// Carousel Auto-Cycle
$(document).ready(function () {
    $('.carousel').carousel({
        interval: 8000
    })
});
//datetimepicker
$(document).ready(function () {
    $('.datepicker-field').datepicker();
});
