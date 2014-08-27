app.controller('BookingController', ['$scope', 'bookingFactory', 'sportsFactory', 'myFacilitiesFactory', function($scope, bookingFactory, sportsFactory, myFacilitiesFactory) {

  function init() {

// Get sports for dropdown
    sportsFactory.getSports()
      .success(function(sports) {
        $scope.sports = sports;
      })
      .error(function(data) {
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

    bookingFactory.addBooking(sportId, $scope.taggedFriendsIds, facilityId, sharedDate)
      .success(init());
  };

  $scope.loadTags = function(query) {
    return userFactory.search(query);
  };

}]);
