app.controller('NavbarController', ['$rootScope', '$scope', 'userFactory', '$location', function($rootScope, $scope, userFactory, $location) {

  $scope.search = function(term1, term2) {
    $location.path('/search').search('q', [term1, term2]);
  };

  $scope.logout = function() {
    userFactory.logout()
      .success(
        $rootScope.hasUser = false,
        $location.path('/'))
      .error($rootScope.hasUser = false);
    };

}]);
