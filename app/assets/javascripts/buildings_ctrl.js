(function() {
  "use strict";

  angular.module("app").controller("buildingsCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/buildings.json").then(function(response) {
        $scope.buildings = response.data;
      });
    }

    $scope.addBuilding = function(location, height) {
      var newBuilding = {
        location: location,
        height: height
      };
      $http.post('/api/v1/buildings.json', newBuilding).then(function(response) {
        var buildingCallback = response.data;
        $scope.buildings.push(buildingCallback);
      }, function(error) {
        $scope.errorMessages = error.data.errors
      });
    }

    $scope.deleteBuilding = function(Building) {
      var index = $scope.buildings.indexOf(building);
      $scope.buildings.splice(index, 1);
    }

    $scope.toggleOrder = function(attribute) {
      if(attribute === $scope.orderAttribute) {  
        $scope.direction = !$scope.direction;
      } else {
        $scope.direction = false;
      }
      $scope.orderAttribute = attribute;
    }

  });
})();