# Create Startdog databases without ontologies
# Used to measure 1) number of triples in data, 2) Stardog load time for data only

## Note1: Comment out the db drop commands, if the Stardog databases haven't been created yet:
## Note2: Comment out the server start/stop commands, if the stardog server is (and should be kept) running

Echo "Starting Stardog server"
stardog-admin server start

Echo "Deleting previous databases"
stardog-admin db drop lubm1
stardog-admin db drop lubm5
stardog-admin db drop lubm10

Echo "Wait 5 secs for things to stabilize"
sleep 5

Echo "Uni1 (= 1 University)"
stardog-admin db create -n lubm1 ../data/Uni1.ttl 

Echo "Uni5 (= 5 Universities)"
stardog-admin db create -n lubm5 ../data/Uni5.ttl

Echo "Uni10 (= 10 Universities)"
stardog-admin db create -n lubm10 ../data/Uni10.ttl

Echo "Stopping Stardog server"
stardog-admin server stop
