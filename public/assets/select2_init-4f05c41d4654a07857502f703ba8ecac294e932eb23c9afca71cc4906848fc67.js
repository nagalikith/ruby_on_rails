(function() {
  $.fn.select2.defaults.set("theme", "bootstrap");

  $(function() {
    $(document).on('init-select2', '.select2', function() {
      return $(this).select2();
    });
    return $('.select2').trigger('init-select2');
  });

}).call(this);
