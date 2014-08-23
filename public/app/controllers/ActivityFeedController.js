app.controller('ActivityFeedController', ['$scope', 'activityFeedFactory', function($scope, activityFeedFactory) {

  function init() {
    activityFeedFactory.getBookings()
      .success(function(bookings) {
        $scope.bookings = bookings;
      })
      .error(function(data) {
        console.log(data);
      });
  }
  init();

  $scope.newBooking = function(sportId, userId, facilityId, time) {
    activityFeedFactory.addBooking(sportId, userId, facilityId, time)
      .success(init());

  };
}]);
