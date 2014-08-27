app.factory('bookingFactory', ['$http', function($http) {
  var factory = {};

  factory.addBooking = function(sportId, taggedFriendsIds, facilityId, sharedDate) {
    var user_bookings_attributes = [];

    for (var i = 0; i < taggedFriendsIds.length; i++) {
      user_bookings_attributes.push({user_id: taggedFriendsIds[i]});
    }

    var data = {booking: {sport_id: sportId, facility_id: facilityId, time: sharedDate, user_bookings_attributes: user_bookings_attributes}};
    return $http.post('/bookings', data);
  };

  return factory;
}]);
