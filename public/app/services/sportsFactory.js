app.factory('sportsFactory', ['$http', function($http){
  var factory = {};

  factory.getSports = function() {
    return $http.get('/sports');
  };

  factory.likeSport = function(sportId) {
    var data = {sport_id: sportId};
    return $http.post('/user_sports', data);
  };

  return factory;
}]);
