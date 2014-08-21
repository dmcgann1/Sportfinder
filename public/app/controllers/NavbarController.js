app.controller('NavbarController', ['$scope', '$location', function($scope, $location) {
  $scope.search = function(term1, term2) {
    $location.path('/search').search('q', [term1, term2]);
  };
}]);
