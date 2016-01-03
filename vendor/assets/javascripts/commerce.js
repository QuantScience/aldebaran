$(document).on("ready page:load", function() {
  $('#offers').bxSlider({
    hideControlOnEnd: true,
    minSlides: 1,
    maxSlides: 1,

    pager: false,
    infiniteLoop: false,
    nextSelector: '#bx-next5',
    prevSelector: '#bx-prev5',
    nextText: '>',
    prevText: '<',
  });
});