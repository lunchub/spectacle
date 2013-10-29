// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require cocoon
//= require gumby/libs/modernizr-2.6.2.min
//= require gumby/libs/gumby
//= require gumby/main
//= require gumby/libs/ui/gumby.tabs
//= require gumby/libs/ui/gumby.checkbox

// initialize Gumby and all included UI modules
Gumby.init();

// initialize Gumby with only the specified UI modules
Gumby.init({
  uiModules: ['tabs']
});

$('ul.tab-nav').on('click', 'a', function (e) {
  e.preventDefault();
  e.stopPropergation();
});
