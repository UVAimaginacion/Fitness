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