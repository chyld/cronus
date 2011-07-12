// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function createMap(id, name, lat, lng)
{
  var latlng = new google.maps.LatLng(lat, lng);
  var myOptions = 
  {
    zoom: 8,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var map = new google.maps.Map(document.getElementById(id), myOptions);
}

$(document).ready(function()
{
  $('.visible').hide();

  $(document).bind('keydown', 'Ctrl+n', function() { $(window.location).attr('href', '/notes'); } );
  $(document).bind('keydown', 'Ctrl+t', function() { $(window.location).attr('href', '/tags'); } );
  $(document).bind('keydown', 'Ctrl+i', function() { $(window.location).attr('href', '/notes/new'); } );

  $('#add-tag').click(function(event)
  {
    var tag_count = $("#tags > li").size() - 1;

    $("#tags").append('<li class="half"><input id="tag_name' + tag_count  + '" name="tag[name' + tag_count + ']" size="30" type="text" /></li>');
    tag_count++;
  });

  $('#add-url').click(function(event)
  {
    var url_count = $("#urls > li").size() - 1;

    $("#urls").append('<li class="half"><input id="site_url' + url_count  + '" name="site[url' + url_count + ']" size="30" type="text" /></li>');
    url_count++;
  });

  $('#add-file').click(function(event)
  {
    var file_count = $("#files > li").size() - 1;

    $("#files").append('<li class="half"><input id="attachment_name' + file_count  + '" name="attachment[name' + file_count + ']" type="file" /></li>');
    file_count++;
  });

  $('#add-location').click(function(event)
  {
    var location_count = $("#locations > li").size() - 1;
	var name = '<input id="location_name' + location_count  + '" name="location[' + location_count + '[name]]" size="30" type="text" /> ';
	var latitude = '<input id="location_lat' + location_count  + '" name="location[' + location_count + '[lat]]" size="30" type="text" /> ';
	var longitude = '<input id="location_long' + location_count  + '" name="location[' + location_count + '[long]]" size="30" type="text" /> ';

    $("#locations").append('<li class="small">' + name + latitude + longitude + '</li>');
    location_count++;
  });

  $('#add-dates').click(function(event)
  {
	$('.visible').toggle();
  });
});
