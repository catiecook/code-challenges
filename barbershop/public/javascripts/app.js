angular.module('gif', ['ngRoute','ngAnimate', 'ngMaterial', 'ngAria'])

  .config(function($routeProvider, $locationProvider, $mdThemingProvider) {
    $routeProvider.when('/', {
        templateUrl: 'partials/index.html',
        controller: 'MainController'
    })
    $locationProvider.html5Mode(true);
})
