# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'keyup', '#search_blog', ->
  value = $(this).val().toLowerCase()
  $('.well').filter ->
    $(this).toggle $(this).text().toLowerCase().indexOf(value) > -1
    return
  return
