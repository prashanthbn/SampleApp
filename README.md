# SampleApp - Concourse CI

`cd concourse`

`docker-compose up -d`

`cd ..`

`fly -t tutorial set-pipeline -p hello-world -c hello-world.yml`

`fly -t tutorial unpause-pipeline -p hello-world`

`fly -t tutorial trigger-job --job hello-world/hello-world-job --watch`

`fly -t tutorial set-pipeline -p simple-build -c pipeline.yml`
 
`fly -t tutorial unpause-pipeline -p simple-build`

`fly -t tutorial set-pipeline -p simple-app --var docker-hub-username=prashanthbn --var docker-hub-password=lol`

`docker run -d -p 8090:80 --name myapp prashanthbn/sample-api`

