app.factory('facilitySearchFactory', ['$http', function($http) {
  var factory = {};

  factory.getFacilities = function(param1, param2) {
    var data = {sport_type: param1, area: param2};
    return $http.post('/facilities/search.json', data);
  };

  factory.getFacility = function(id, reference) {
    return $http.get("/facilities/id?identifier=" + id + "&reference=" + reference);
  };

  return factory;
}]);
