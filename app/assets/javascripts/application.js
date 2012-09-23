// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(function () {
	"use strict";

	function buttontoggle(element, name) {
		$(".togglebutton", element).css("border", "5px solid transparent");
		if ($(name).is(':visible') ){

	      
	        $(".togglebutton", element).css("border-left", "5px solid");
	        $(".togglebutton", element).css("margin-top", "5px");
	        $(".togglebutton", element).css("margin-right", "0px");

	    } else {
	        $(".togglebutton", element).css("border-top", "5px solid");
	        $(".togglebutton", element).css("margin-top", "10px");
	        $(".togglebutton", element).css("margin-right", "2px");
	    };
	        $(name).toggle();
	}

  $(".toggle_user").click(function () {
  		buttontoggle(this, ".toggled_user");
    });

  $(".toggle_list").click(function () {
  		buttontoggle(this, ".toggled_list");
    });




});