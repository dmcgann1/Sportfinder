app.factory('facilitiesFactory', ['$http', function($http){
  var factory = {};

  factory.getFacilities = function() {
    return $http.get('/search');
    // Somehow need to pass params for this to work
  };

  return factory;
}]);
