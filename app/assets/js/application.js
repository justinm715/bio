
$(document).ready(function() {

/* Topnav
–––––––––––––––––––––––––––––––––––––––––––––––––– */  
$('.collapsible-topnav .collapsible-toggle').on('click', function (event) {
  $(event.target).closest('.collapsible-topnav').toggleClass('open');
})

})