(function() {
  $(function() {
    return $(document).on('ajax-modal-show', function() {
      return $('select.select2').select2();
    });
  });

}).call(this);
