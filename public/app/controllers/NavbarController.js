app.controller('NavbarController', ['$scope', '$location', 'userFactory', function($scope, $location, userFactory) {

  $scope.search = function(term1, term2) {
    $location.path('/search').search('q', [term1, term2]);
  };

  $scope.logout = function() {
    userFactory.logout()
      .success(
        $scope.current_user = null,
        $location.path('/'))
      .error(alert('failed to logout'));
    };

    $scope.animals = ["cat", "dog", "tiger"];

}]);
