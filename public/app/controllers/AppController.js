app.controller('AppController',['$rootScope', '$scope', 'userFactory', function($rootScope, $scope, userFactory) {

  $scope.current_user = "none";
  $rootScope.hasUser = false;

  function init() {
    userFactory.getMe()
      .success(function(current_user) {
        $scope.current_user = current_user;
      });
    }

  init();

  $scope.loggedIn = function(){
    // Returns none as having difficulty using null
    if($scope.current_user === "none") {
      $rootScope.hasUser = false;
    }
    else {
      $rootScope.hasUser = true;
    }
    return $rootScope.hasUser;
  };

  $scope.$watch('current_user', function() {
    $scope.loggedIn();
  });

}]);
