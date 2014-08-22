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

  factory.upvote = function(reviewId) {
    var data = {is_up: true};
    return $http.post('/reviews/' + reviewId + '/votes', data);
  };

  factory.downvote = function(reviewId) {
    var data = {is_up: false};
    return $http.post('/reviews/' + reviewId + '/votes', data);
  };

  return factory;
}]);
