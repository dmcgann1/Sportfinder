var app = angular.module('SportFinder', ['ngRoute']);

// Routes

app.config(['$routeProvider', function($routeProvider){
  $routeProvider.when('/user', {
    templateUrl: '../assets/user.html',
    controller: 'ProfileCtrl'
  }).otherwise({
    templateUrl: 'app/views/home.html',
    controller: 'HomeCtrl'
  });
}]);
