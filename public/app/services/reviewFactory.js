app.factory('reviewFactory', ['$http', function($http) {
  var factory = {};

  factory.addReview = function(facilityId, body) {
    var data = {body: body};
    return $http.post('/facilities/' + facilityId + '/reviews', data);
  };

  factory.updateReview = function(facilityId, reviewId, body) {
    var data = {body: body};
    return $http.put('/facilities/' + facilityId + '/reviews/' + reviewId, data);
  };

  factory.delReview = function(facilityId, reviewId) {
    return $http.delete('/facilities/' + facilityId + '/reviews/' + reviewId);
  };

  return factory;
}]);
