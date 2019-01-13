angular.module("App",['main']);

var app = angular.module("main",[]);


var ctrl = function($scope){
    // Controller body
    var data = "roger";
    $scope.data = "that";
    $scope.data = data;
};


app.controller("mainController",['$scope', ctrl]);