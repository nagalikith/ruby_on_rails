# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
    $("#individualsTable").show()
    $("#trustsTable").hide()
    $("#commercialsTable").hide()

    $('#individual').click ->
        $("#individualsTable").show()
        $("#trustsTable").hide()
        $("#commercialsTable").hide()
        
    $('#trusts').click ->
        $("#individualsTable").hide()
        $("#trustsTable").show()
        $("#commercialsTable").hide()
    
    $('#commercial').click ->
        $("#individualsTable").hide()
        $("#trustsTable").hide()
        $("#commercialsTable").show()
