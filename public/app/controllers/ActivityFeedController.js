app.controller('ActivityFeedController', ['$scope', 'activityFeedFactory', 'sportsFactory', 'userFactory', 'myFacilitiesFactory', '$http', function($scope, activityFeedFactory, sportsFactory, userFactory, myFacilitiesFactory, $http) {

  function init() {
// If not refactored then define this outside of init so that only this piece gets called on successful new booking
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


  $scope.newBooking = function(sportId, userId1, userId2, facilityId, time) {
    // activityFeedFactory.addBooking(sportId, userId1, userId2, facilityId, time)
    activityFeedFactory.addBooking(43, 6, 8, 2, time)
      .success(init());
  };

  $scope.loadTags = function(query, userId) {
    return userFactory.search(query, userId);
  };

}]);
