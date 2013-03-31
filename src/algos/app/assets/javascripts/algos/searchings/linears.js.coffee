# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.algos = {};

window.algos.showDemo = -> $.get('linears/demo', (data) ->
    $('#response').html(data);
    alert("Received response.");
  )