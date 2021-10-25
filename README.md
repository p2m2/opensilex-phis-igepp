# opensilex-phis-igepp
Docker environnent to deploy opensilex

http://localhost/
http://localhost/rdfstore

### Internal SPARQL Endpoint

http://rdf4j:8080/rdf4j-workbench/repositories/opensilex/query

## create an administrator user

docker exec -it opensilex-phis-igepp_opensilex-phis_1 ./bin/opensilex.sh user add --admin --email=xxxx@yyy.com --lang=fr --firstName=firt --lastName=last --password=xxxx



## Genouest deployment

### genostack config
- create instance at https://genostack.genouest.org/project/
   - Image : Debian 10.10

### local install from genossh

reinstall docker/docker-compose
 - https://docs.docker.com/engine/install/debian/
 - https://docs.docker.com/compose/install/

- `ssh debian@192.168.100.121`
- `git clone https://github.com/p2m2/opensilex-phis-igepp.git`
- cd opensilex-phis-igepp
- change publicURI : config/opensilex.yml (http://opensilex-192-168-XXX-YYY.vm.openstack.genouest.org/)
- stop apache : sudo service apache2 stop
- change host variable inside opensphis image : 
- sudo docker-compose up -d

http://opensilex-192-168-100-121.vm.openstack.genouest.org/



