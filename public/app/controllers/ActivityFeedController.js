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
// are these 3 needed to be specified as undefined?
  $scope.selectedSport = undefined;
  $scope.selectedPlayer = undefined;
  $scope.selectedFacility = undefined;
  $scope.taggedFriendsIds = [];


  $scope.newBooking = function(sportId, taggedFriendsIds, facilityId, time) {
    $scope.taggedFriendsIds = $scope.taggedFriends.map(function(person) {return person.id;});

    activityFeedFactory.addBooking(sportId, $scope.taggedFriendsIds, facilityId, time)
      .success(init());
  };

  $scope.loadTags = function(query, userId) {
    return userFactory.search(query, userId);
  };

}]);
