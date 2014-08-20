app.factory('sportsFactory', ['$http', function($http){
  var factory = {};

  factory.getSports = function() {
    return $http.get('/sports');
  };

  return factory;
}]);
