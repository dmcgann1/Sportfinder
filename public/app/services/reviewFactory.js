app.factory('reviewFactory', ['$http', function($http) {
  var factory = {};

  factory.addReview = function(facilityId, body) {
    var data = {body: body};
    return $http.post('/facilities/' + facilityId + '/reviews', data);
  };

  return factory;
}]);
