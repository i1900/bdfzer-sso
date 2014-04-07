# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require semantic-ui
#= require angular
#= require angular-animate
#= require angular-resource
#= require angular-touch
#= require_tree ./dashboard

window.App = angular.module('BDFZer', ['ngResource'])

window.base =
	SideBarCtrl : () ->
		$left_ctrl = $('#leftbar_control')
		$left_bar = $('#left_bar')
		$body = $('body')
		$bottom = $('#bottom_bar')
		$left_ctrl.click ()->
			$left_bar.sidebar({
				overlay: false
			}).sidebar 'toggle'
			if $left_bar.sidebar 'is open' == true
				$bottom.fadeOut(300)
			if $left_bar.sidebar 'is close' == true
				$bottom.fadeIn(300)
	Init : () ->
		window.base.SideBarCtrl()

$ ->
	window.base.Init()