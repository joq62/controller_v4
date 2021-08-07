all:
#	service
	rm -rf ebin/*;
#	interfaces
	erlc -I ../../interfaces -o ebin ../../interfaces/*.erl;
#	node
	erlc -I ../../interfaces -o ebin ../../support/src/*.erl;
#	controller
	erlc -I ../../interfaces -o ebin ../../kube_controller/src/*.erl;
#	application
	cp src/*.app ebin;
	erlc -o ebin src/*.erl;
	rm -rf src/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
	echo Done
