app.factory('sportsFactory', ['$http', function($http) {
  var factory = {},
    all_sports = [];

  factory.getSports = function() {
    return $http.get('/sports');
  };

}]);
