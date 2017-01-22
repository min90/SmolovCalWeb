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
//= require tether
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
	$("input[type=checkbox]").change(function() {
		if (this.checked) {
			var valueOfCheckbox = $(this);
			var workoutID = $("")
			var nameOfCheckbox = this.name;
			formatProgress(nameOfCheckbox, valueOfCheckbox.val());
		};
	});
});

function formatProgress(name, day) {
	var progress = name + day;
	sendProgress(progress);
}

function sendProgress(progress) {
	$.ajax({
		method: "POST",
		url: "/update_progress",
		dataType: 'script',
		data: {
			tmp_progress: progress
		},
		success: {
			//Display success
		}
	});
}

// function updateInfo(time) {
// 	var time;
// 	var complete_title = $('#hostname').html();
// 	var sub_hostname = complete_title.substr(7, complete_title.length)
// 	$.ajax({
// 		method: "GET",
// 		url: "/get_info",
// 		dataType: 'script',
// 		data: {
// 			created_at: time,
// 			hostname: sub_hostname
// 		}
// 	})
// }