export default class MyController {

	// Init the controller each time it is called (refresh browser....)
	constructor($scope, $log, $rootScope) {
		this.name = 'COOL NAME';
		this.age = 52;
		this.activities = [
		'volley', 'country', 'piscine'];
		this.activity = "";

		this.log = $log;
		this.scope = $scope;

		console.log('log', this.log);

		this.log.info('activities', this.activities);
		$log.info('$scope', $scope);
		$log.info('$rootScope', $rootScope);
	}

	add() {
		this.log.info('add', this.scope.ctrlName);
		this.activities.push(this.scope.activity);
	}
}
