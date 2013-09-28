var App = function($, d, w) {
  var that = this;

  that.$ = $;
  that.d = d;
  that.w = w;
};

App.prototype.init = function() {
  var that = this;

  that.$(function() {
    that.thumbClick();
  });

  console.log("It's work!");
};

App.prototype.thumbClick = function() {
  $(".video-thumb").on("click", function() {
    $(this).parent().find("object").toggle();
  });
};
