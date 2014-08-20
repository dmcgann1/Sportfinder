app.controller('SportsController', ['$scope', 'sportsFactory', function($scope, sportsFactory) {

  function init() {
    sportsFactory.getSports()
      .success(function(sports) {
        $scope.sports = sports;
      })
      .error(function(data) {
        console.log(data);
      });
  }
  init();
}]);
