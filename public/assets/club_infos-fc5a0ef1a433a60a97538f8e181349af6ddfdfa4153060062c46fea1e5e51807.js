(function() {
  $(function() {
    $('.deleteRow').click(function() {
      if ($("#meeting-table tr").length > 1) {
        return $(this).closest('tr').remove();
      }
    });
    return $('#addMeeting').click(function() {
      var lastRow;
      if ($("#meeting-table tr").length < 14) {
        lastRow = $("#meeting-table tr:last");
        return lastRow.clone(true).insertAfter(lastRow);
      }
    });
  });

}).call(this);
