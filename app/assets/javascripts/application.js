// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var menuSlide = function() {
  $('.icon-hamburger').click(function() {
    $('nav').animate({
      top:'-120px'
    }, 200);
    // $('body div.container').animate({
    //   top: '120px'
    // }, 200);
  });

  $('.icon-close').click(function() {
    $('nav').animate({
      top: '-450px'
    }, 200);
  });
};

var exploreSlide = function() {
  $('.dropdown').on("hide.bs.dropdown", function() {
    $('nav').removeClass('exploreHeight');
  });
  if ($("header .icon-hamburger").css("display") !== "none") {
    $('.dropdown').on("show.bs.dropdown", function() {
      $('nav').addClass('exploreHeight');
    });
  } else {
    $('.dropdown').on("show.bs.dropdown", function() {
      $('nav').removeClass('exploreHeight');
    });
  }
};

$(document).ready(menuSlide);
$(document).ready(exploreSlide);

$(window).resize(function() {
  exploreSlide();
});

