app.controller('ActivityFeedController', ['$scope', 'activityFeedFactory', 'sportsFactory', 'userFactory', 'myFacilitiesFactory', function($scope, activityFeedFactory, sportsFactory, userFactory, myFacilitiesFactory) {

  function init() {
    activityFeedFactory.getBookings()
      .success(function(bookings) {
        $scope.bookings = bookings;
      })
      .error(function(data) {
        console.log(data);
      });

// Get sports for dropdown
    sportsFactory.getSports()
      .success(function(sports) {
        $scope.sports = sports;
      })
      .error(function(data) {
        console.log(data);
      });

// Get friends for dropdown
    userFactory.getUser(7)
      .success(function(user) {
        $scope.user = user;
      })
      .error(function(data){
        console.log(data);
      });

// Get facilities for dropdown
    myFacilitiesFactory.getFacilities()
      .success(function(facilities) {
        $scope.facilities = facilities;
      })
      .error(function(data) {
        console.log(data);
      });
  }
  init();

  $scope.selectedSport = undefined;
  $scope.selectedPlayer = undefined;
  $scope.selectedFacility = undefined;

  $scope.newBooking = function(sportId, userId, facilityId, time) {
    activityFeedFactory.addBooking(sportId, userId, facilityId, time)
      .success(init());

  };
}]);
