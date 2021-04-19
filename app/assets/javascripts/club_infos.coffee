# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
    $('.deleteRow').click -> 
        if $("#meeting-table tr").length > 1
            $(this).closest('tr').remove()
    
    $('#addMeeting').click -> 
        if $("#meeting-table tr").length < 14
            lastRow = $("#meeting-table tr:last")
            lastRow.clone(true).insertAfter(lastRow)
        
        
        
        
