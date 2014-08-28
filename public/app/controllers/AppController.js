app.controller('AppController',['$rootScope', '$scope', 'userFactory', function($rootScope, $scope, userFactory) {

  $rootScope.current_user = "none";
  $rootScope.hasUser = false;

  function init() {
    userFactory.getMe()
      .success(function(current_user) {
        $rootScope.current_user = current_user;
      });
    }

  init();

  $rootScope.loggedIn = function(){
    // Returns none as having difficulty using null
    if($rootScope.current_user === "none") {
      $rootScope.hasUser = false;
    }
    else {
      $rootScope.hasUser = true;
    }
    return $rootScope.hasUser;
  };

  $rootScope.$watch('current_user', function() {
    $rootScope.loggedIn();
  });

  $scope.canBook = false;

  $scope.showBooking = function() {
    $scope.canBook = !$scope.canBook;
  };

}]);
