app.factory('sportsFactory', ['$http','$q', function($http,$q){
  var factory = {},
    all_sports = [];

  factory.getSports = function() {
    return $http.get('/sports');
  };

  factory.filter = function(query, all_sports) {
    return all_sports.filter( function(x){return x.name.toLowerCase().indexOf(query.toLowerCase()) > -1;});
  };

  factory.search = function(query) {
    var sports, deferred = $q.defer();
    // Memoization
    // Only call the backend for the list of sports once.
    // Subsequently we have memoized the list of sports in all_sports
    // so we don't need to make the remote Ajax request.
    if(all_sports.length === 0) {
      //$http.get('/sports').success(function(results){
      factory.getSports().success(function(results){
        all_sports = results;
        sports = factory.filter(query, all_sports);
        deferred.resolve(sports);
      });
    }else{
      sports = factory.filter(query, all_sports);
      deferred.resolve(sports);
    }

    return deferred.promise;
  };

  return factory;
}]);
