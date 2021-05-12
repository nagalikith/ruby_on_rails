# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->

    $("#individualsTable").show()
    $("#trustsTable").hide()
    $("#commercialsTable").hide()
    $("#prospectivesTable").hide()

    $('#individual').click ->
        $("#individualsTable").show()
        $("#trustsTable").hide()
        $("#commercialsTable").hide()
        $("#prospectivesTable").hide()
        document.getElementById('individual').classList.add("active")
        document.getElementById('trusts').classList.remove("active")
        document.getElementById('commercial').classList.remove("active")
        document.getElementById('prospective').classList.remove("active")

    $('#trusts').click ->
        $("#individualsTable").hide()
        $("#trustsTable").show()
        $("#commercialsTable").hide()
        $("#prospectivesTable").hide()

        document.getElementById('individual').classList.remove("active")
        document.getElementById('trusts').classList.add("active")
        document.getElementById('commercial').classList.remove("active")
        document.getElementById('prospective').classList.remove("active")
    
    $('#commercial').click ->
        $("#individualsTable").hide()
        $("#trustsTable").hide()
        $("#commercialsTable").show()
        $("#prospectivesTable").hide()

        document.getElementById('individual').classList.remove("active")
        document.getElementById('trusts').classList.remove("active")
        document.getElementById('commercial').classList.add("active")
        document.getElementById('prospective').classList.remove("active")
    
    $('#prospective').click ->
        $("#individualsTable").hide()
        $("#trustsTable").hide()
        $("#commercialsTable").hide()
        $("#prospectivesTable").show()

        document.getElementById('individual').classList.remove("active")
        document.getElementById('trusts').classList.remove("active")
        document.getElementById('commercial').classList.remove("active")
        document.getElementById('prospective').classList.add("active")
