'use strict'

describe 'Controller: BillCtrl', () ->

  # load the controller's module
  beforeEach(()->
    module 'appApp.controllers' 
    module 'ui.bootstrap'
  )


  BillCtrl = {}
  scope = {}
  http = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($injector, $controller, $rootScope) ->
    $httpBackend = $injector.get('$httpBackend')
    $httpBackend.whenGET(/.*/).respond({fake: 'data'})
    scope = $rootScope.$new()
    BillCtrl = $controller 'BillCtrl', {
      $scope: scope
    }

  xit 'should add the 20 most recent bills to the dropdown menu', () ->
    expect(scope.bills.length).toBe > 0;
