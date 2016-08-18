//= require jquery
//= require jquery_ujs

//= require bootstrap
//= require turbolinks
//= require angular

//= require_tree .


$(function() {
    $("#recipes_search input").keyup(function() {
        $.get($("#recipes_search").attr("action"),$("#recipes_search").serialize(),null,'script');
        return false;
    });
});

$(function() {
    $("#tips_search input").keyup(function() {
        $.get($("#tips_search").attr("action"),$("#tips_search").serialize(),null,'script');
        return false;
    });
});
//eventos
$(function() {
     $("#events_search input").keyup(function() {
          $.get($("#events_search").attr("action"),$("#events_search").serialize(),null,'script');
          return false;
     });
});

