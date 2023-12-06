if(timeShoot < 1){
	instance_create_layer(x,y,"Instance", objEntite);
	timeShoot = 20;
}

timeShoot = timeShoot - 1;