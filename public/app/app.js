var app = angular.module('SportFinder', ['ngRoute', 'ui.bootstrap', 'ngAnimate', 'mgcrea.ngStrap']);

// Routes

app.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider){
  $routeProvider
  .when('/', {
    templateUrl: 'app/views/home.html',
    controller: 'HomeController'
  })
  .when('/users/:userId',{
    templateUrl: 'app/views/profile.html',
    controller: 'ProfileController'
  })
  .when('/sports', {
    templateUrl: 'app/views/sports.html',
    controller: 'SportsController'
  })
  .when('/activityfeed', {
    templateUrl: 'app/views/activity_feed.html',
    controller: 'ActivityFeedController'
  })
  .when('/myfacilities', {
    templateUrl: 'app/views/my_facilities.html',
    controller: 'MyFacilitiesController'
  })
  .when('/facilities/:facilityId', {
    templateUrl: 'app/views/facility.html',
    controller: 'FacilityController'
  })
  .when('/search', {
    templateUrl: 'app/views/results.html',
    controller: 'ResultsController'
  })
  .otherwise( {redirectTo: '/'}
    );

}]);
