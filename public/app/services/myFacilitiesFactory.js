app.factory('myFacilitiesFactory', ['$http', function($http){
  var factory = {};

  factory.getFacilities = function() {
    return $http.get('/favourites');
  };

  return factory;
}]);
