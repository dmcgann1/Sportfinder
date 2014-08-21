app.controller('MyFacilitiesController', ['$scope', 'myFacilitiesFactory', function($scope, myFacilitiesFactory) {

  function init() {
    myFacilitiesFactory.getFacilities()
      .success(function(facilities) {
        $scope.facilities = facilities;
      })
      .error(function(data) {
        console.log(data);
      });
  }
  init();
}]);
