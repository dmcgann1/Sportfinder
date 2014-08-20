app.factory('activityFeedFactory', ['$http', function($http) {
  var factory = {};

  factory.getBookings = function() {
    return $http.get('/bookings');
  };

  return factory;
}]);
