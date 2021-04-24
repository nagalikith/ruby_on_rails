(function() {
  jQuery.ajaxSetup({
    statusCode: {
      401: function() {
        return alert("Your session has expired. Please log in again.");
      },
      403: function() {
        return alert("Sorry, You are not authorised to access this page.");
      }
    }
  });

}).call(this);
