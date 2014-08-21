app.factory('facilityFactory', ['$http', function($http) {
  var factory = {};

  factory.getFacility = function(facilityId) {
    return $http.get('/facilities/' + facilityId);
  };

  return factory;
}]);
