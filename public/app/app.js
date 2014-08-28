var app = angular.module('SportFinder', ['ngRoute','ui.bootstrap', 'ngAnimate', 'ngTagsInput', 'ngSanitize', 'mgcrea.ngStrap']);

// Routes

app.config(['$routeProvider', function($routeProvider, $http, $rootScope){
  $routeProvider
  .when('/', {
    templateUrl: 'app/views/home.html',
    controller: 'HomeController',
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
    // resolve: {
    //   app: function($q, $http, $rootScope) {
    //     var defer = $q.defer();
    //     $http.get('/users')
    //       .success(function(current_user) {
    //         $rootScope.current_user = current_user,
    //         defer.resolve();
    //       });
    //     return defer.promise;
    //   }
    // }
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

app.run(function($location, $rootScope) {
  $rootScope.$on("$routeChangeStart", function(event, next, current) {
    if(!$rootScope.hasUser) {
      $location.path('/');
    }
  });
});


