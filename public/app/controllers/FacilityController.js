app.controller('FacilityController', ['$scope', 'facilityFactory', '$routeParams', function($scope, facilityFactory, $routeParams) {

  var facilityId = $routeParams.facilityId;


  function init() {
    facilityFactory.getFacility(facilityId)
      .success(function(facility) {
        $scope.facility = facility;
      })
      .error(function(data){
        console.log(data);
      });
  }
  init();
}]);
