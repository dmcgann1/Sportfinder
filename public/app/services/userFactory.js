app.factory('userFactory', ['$http','$q', function($http, $q) {
  var factory = {},
    all_friends = [];

  factory.getMe = function() {
    return $http.get('/users');
  };

  factory.getUser = function(userId) {
    return $http.get('/users/' + userId);
  };

  factory.logout = function() {
    return $http.delete('/users/sign_out');
  };

  factory.filter = function(query, all_friends) {
    return all_friends.filter( function(x){return x.name.toLowerCase().indexOf(query.toLowerCase()) > -1;});
  };

  factory.search = function(query) {
    var friends, deferred = $q.defer();
    // Memoization
    // Only call the backend for the user info once.
    // Subsequently we have memoized the list of user.friends in all_friends
    // so we don't need to make the remote Ajax request.
    if(all_friends.length === 0) {
      factory.getMe().success(function(result){
        all_friends = result.friends;
        friends = factory.filter(query, all_friends);
        deferred.resolve(friends);
      });
    }else{
      friends = factory.filter(query, all_friends);
      deferred.resolve(friends);
    }

    return deferred.promise;
  };

  return factory;
}]);
