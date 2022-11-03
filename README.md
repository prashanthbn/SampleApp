# SampleApp - Concourse CI

### What is CI?
Continuous integration (CI) is practice to automate code integration.
were developers work on their code in a local environment and commit their changes to a shared repository on a regular basis. This code can then be integrated, with code existing code. The new code is tested along with existing code and checked for any errors, standards and vulnarabilities.
and then it can be packaged to make an artifact.

### Why CI?
   - Smaller Code Changes
   - Fault Isolations
   - Faster Mean Time To Resolution
   - More Test Reliability
   - Faster Release Rate
   - Easy Maintenance and Updates
   - Higher-Quality Code
### Pipeline

A pipeline is the result of configuring Jobs and Resources together. When you configure a pipeline, it takes on a life of its own, to continuously detect resource versions and automatically queue new builds for jobs as they have new available inputs.

### Resources

Resources like the git resource and s3 resource are used to express source code, dependencies, deployments, and any other external state. This interface is also used to model more abstract things like scheduled or interval triggers, via the time resource.

### Jobs
jobs are sequences of get, put, and task steps to execute. These steps determine the job's inputs and outputs. Jobs are designed to be idempotent and loosely coupled, allowing the pipeline to grow with the project's needs without requiring engineers to keep too much in their head at a time.

### Steps

A step is a single container running on a Concourse worker. Each step in a job plan runs in its own container. You can run anything you want inside the container (i.e. run my tests, run this bash script, build this image, etc.).
Each job has a single build plan configured as job.plan. A build plan is a recipe for what to run when a build of the job is created.



`docker-compose up -d`

`fly -t tutorial set-pipeline -p hello-world -c hello-world.yml`

`fly -t tutorial unpause-pipeline -p hello-world`

`fly -t tutorial trigger-job --job hello-world/hello-world-job --watch`

`fly -t tutorial set-pipeline -p simple-build -c pipeline.yml`
 
`fly -t tutorial unpause-pipeline -p simple-build`

`fly -t tutorial set-pipeline -p simple-app --var docker-hub-username=prashanthbn --var docker-hub-password=lol`

`docker run -d -p 8090:80 --name myapp prashanthbn/sample-api`

