app.factory('activityFeedFactory', ['$http', function($http) {
  var factory = {};

  factory.getBookings = function() {
    return $http.get('/bookings');
  };

  factory.addBooking = function(sportId, userId, facilityId, time) {
    var data = {booking: {sport_id: sportId, facility_id: facilityId, time: time, user_bookings_attributes: {"0": {user_id: userId}}}};
    return $http.post('/bookings', data);
  };

  return factory;
}]);
