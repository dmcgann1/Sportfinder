app.controller('ActivityFeedController', ['$scope', 'activityFeedFactory', function($scope, activityFeedFactory) {

  function init() {
// If not refactored then define this outside of init so that only this piece gets called on successful new booking
    activityFeedFactory.getBookings()
      .success(function(bookings) {
        $scope.bookings = bookings;
      })
      .error(function(data) {
        console.log(data);
      });
  }

  init();

}]);
