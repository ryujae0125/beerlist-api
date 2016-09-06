(function() {
  "use strict";

  angular.module("app").controller("beerCtrl", function($scope, $http) {
    function setup() {
      $http.get('/api/v1/beers.json').then(function(response) {
        $scope.beers = response.data;
      });
    }

    setup();

    $scope.addBeer = function(person) {
      $http.post('/api/v1/beers.json', beer).success(function(response) {
        $scope.message = response.data.message;
        $scope.beers.push(beer);
        $scope.beer = {};
      }).error(funtion(response) {
        $scope.errors = response.errors;
    });

    $scope.delBer = function(beer) {
      var index = $scope.beer.indexOf(beer);
      $scope.people.splice(index, 1);
    }
    $scope.toggleOrder = function(orderAttribute) {
      if (orderAttribute != $scope.orderAttribute) {
        $scope.isReverse = false;
      } else {
        $scope.isReverse = !$scope.isReverse;
      }
      $scope.orderAttribute = 'orderAttribute';
    };
  };

  });
}());
