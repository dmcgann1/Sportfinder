// #= require_self

// #= require_tree ./controllers/main

SportFinder = angular.module('SportFinder', []);

SportFinder.config(['$routeProvider', function($routeProvider){
  $routeProvider.when('/user', {
    templateUrl: '../assets/user.html',
    controller: 'ProfileCtrl'
  });

  $routeProvider.otherwise({
    templateUrl: '../../assets/templates/mainIndex.html',
    controller: 'IndexCtrl'
  });
}]);
