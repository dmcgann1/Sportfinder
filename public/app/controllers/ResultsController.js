app.controller('ResultsController', ['$scope', '$location', 'facilitySearchFactory', function($scope, $location, facilitySearchFactory) {
  $scope.searchTerm1 = $location.search()['q'][0];
  $scope.searchTerm2 = $location.search()['q'][1];

  function init() {
    facilitySearchFactory.getFacilities($scope.searchTerm1, $scope.searchTerm2)
      .success(function(results) {
        $scope.results = results;
      })
      .error(function(data){
        console.log(data);
      });
  }
  init();

}]);
