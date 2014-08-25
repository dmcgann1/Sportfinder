app.factory('activityFeedFactory', ['$http', function($http) {
  var factory = {};

  factory.getBookings = function() {
    return $http.get('/bookings');
  };

  factory.addBooking = function(sportId, userId1, userId2, facilityId, time) {
    var data = {booking: {sport_id: sportId, facility_id: facilityId, time: time, user_bookings_attributes: [{user_id: userId1}, {user_id: userId2}]}};
    return $http.post('/bookings', data);
  };

  return factory;
}]);
