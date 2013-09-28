var App = function($, d, w) {
  var that = this;

  that.$ = $;
  that.d = d;
  that.w = w;
};

App.prototype.init = function() {
  var that = this;

  that.$(function() {
    that.signUpForm();
  });

  console.log("It's work!");
};
