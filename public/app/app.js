var app = angular.module('SportFinder', ['ngRoute', 'Devise','ui.bootstrap', 'ngAnimate', 'ngTagsInput', 'mgcrea.ngStrap']);

// Routes

app.config(['$routeProvider', '$locationProvider', 'AuthProvider', function($routeProvider, $locationProvider, AuthProvider){
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
    controller: 'ActivityFeedController',
    templateUrl: 'app/views/activity_feed.html'
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
