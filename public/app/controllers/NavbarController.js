app.controller('NavbarController', ['$scope', '$location', 'userFactory', function($scope, $location, userFactory) {

  function init() {
    userFactory.getUser(7)
      .success(function(user) {
        $scope.user = user;
      })
      .error(function(data){
        console.log(data);
      });
  }
  init();

  $scope.search = function(term1, term2) {
    $location.path('/search').search('q', [term1, term2]);
  };
}]);
