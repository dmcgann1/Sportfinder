app.controller('HomeCtrl', ['$scope', '$routeParams', function($scope, $routeParams) {
  $scope.data = {people: [
    {name: 'Diarmuid', sport: 'Tennis'},
    {name: 'Lisa', sport: 'Running'}
    ]};
}]);

