app.factory('userFactory', ['$http', function($http) {
  var factory = {};

  factory.getUser = function(userId) {
    return $http.get('/users/' + userId);
  };

  return factory;
}]);
