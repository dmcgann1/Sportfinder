app.controller('ProfileController', ['$scope', 'userFactory', '$routeParams', function($scope, userFactory, $routeParams) {

  var userId = $routeParams.userId;
  $scope.userId = $routeParams.userId;

  function init() {
    userFactory.getUser(userId)
      .success(function(user) {
        $scope.user = user;
      })
      .error(function(data){
        console.log(data);
      });
  }
  init();
}]);
