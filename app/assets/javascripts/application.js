// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

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

  $('#add-dates').click(function(event)
  {
	$('.visible').toggle();
  });
});
