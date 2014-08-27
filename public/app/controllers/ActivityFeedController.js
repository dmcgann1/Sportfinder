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
    userFactory.getMe()
      .success(function(current_user) {
        $scope.current_user = current_user;
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
// are these 3 needed to be specified as undefined?
  $scope.selectedSport = undefined;
  $scope.selectedPlayer = undefined;
  $scope.selectedFacility = undefined;
  $scope.taggedFriendsIds = [];


  $scope.newBooking = function(sportId, taggedFriendsIds, facilityId, sharedDate) {
    $scope.taggedFriendsIds = $scope.taggedFriends.map(function(person) {return person.id;});

    activityFeedFactory.addBooking(sportId, $scope.taggedFriendsIds, facilityId, sharedDate)
      .success(init());
  };

  $scope.loadTags = function(query) {
    return userFactory.search(query);
  };

}]);
