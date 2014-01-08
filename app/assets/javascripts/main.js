var app = angular.module("hotel",[]);

app.controller("homeController",["$scope","$http","$filter" ,function homeController($scope, $http,$filter){

	$scope.getTicker=function getTicker(){

	 

 	$http({method: 'GET' , url:'/get_ticker'}).
	 		success(function (data){
	 			console.log(data);
	 		}).
	 		error(function (data){
	 			console.log(data);
	 		})

	 }

	 $scope.getTicker();
	$scope.myname = [{name:"satz",age:23,gender:"male"},{name:"G.K",age:22,gender:"male"},{name:"AJ",age:22,gender:"male"}]


}]);

$(document).ready(function(){
	console.log('jq loaded')
})