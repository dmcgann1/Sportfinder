app.controller('FacilitiesController', ['$scope', 'facilitiesFactory', function($scope, facilitiesFactory) {

  function init() {
    facilitiesFactory.getFacilities()
      .success(function(facilities) {
        $scope.facilities = facilities;
      })
      .error(function(data) {
        console.log(data);
      });
  }
  init();
}]);
