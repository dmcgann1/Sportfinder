app.controller('FacilityController', ['$scope', 'facilityFactory', '$routeParams', 'modalService', 'reviewFactory', function($scope, facilityFactory, $routeParams, modalService, reviewFactory) {

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

  $scope.newReview = function() {
    var modalOptions = {
        closeButtonText: 'Cancel',
        actionButtonText: 'Create',
        headerText: 'Add a new review',
    };
    modalService.showModal({}, modalOptions).then(function(result){
      reviewFactory.addReview(facilityId, result)
        .success(init())
        .error(function(data){
          console.log(data);
        });
    });
  };

  $scope.editReview = function(reviewId) {
    var modalOptions = {
        closeButtonText: 'Cancel',
        actionButtonText: 'Update',
        headerText: 'Edit review',
    };
    modalService.showModal({}, modalOptions).then(function(result){
      reviewFactory.updateReview(facilityId, reviewId, result)
        .success(init())
        .error(function(data){
          console.log(data);
        });
    });
  };

  $scope.deleteReview = function(reviewId) {
    reviewFactory.delReview(facilityId, reviewId)
      .success(init())
      .error(function(data){
        console.log(data);
      });
  };

  $scope.upVote = function(reviewId) {
    reviewFactory.upvote(reviewId)
      .success(init())
      .error(function(data){
        console.log(data);
      });
  };

  $scope.downVote = function(reviewId) {
    reviewFactory.downvote(reviewId)
      .success(init())
      .error(function(data){
        console.log(data);
      });
  };

}]);
