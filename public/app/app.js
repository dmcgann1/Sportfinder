var SportFinder = angular.module('SportFinder', ['ngRoute']);

// Routes

SportFinder.config(['$routeProvider', function($routeProvider){
  $routeProvider.when('/user', {
    templateUrl: '../assets/user.html',
    controller: 'ProfileCtrl'
  }).otherwise({
    templateUrl: 'app/views/home.html',
    controller: 'HomeCtrl'
  });
}]);
