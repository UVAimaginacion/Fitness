//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require tether
//= require turbolinks
//= require bootstrap
//= require bootstrap-sprockets
//= require_tree .


$(function() {
     $("#events_search input").keyup(function() {
          $.get($("#events_search").attr("action"),$("#events_search").serialize(),null,'script');
          return false;
     });
});

$('.dropdown-button').dropdown({
         inDuration: 300,
         outDuration: 225,
         constrain_width: false, // Does not change width of dropdown to that of the activator
         hover: true, // Activate on hover
         gutter: 0, // Spacing from edge
         belowOrigin: false, // Displays dropdown below the button
         alignment: 'left' // Displays dropdown with edge aligned to the left of button
    }
);
       