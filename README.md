# SampleApp - Concourse CI

###
    Continuous integration (CI) is practice that involves developers making small changes and checks to their code. Due to the scale of requirements and the number of steps involved, this process is automated to ensure that teams can build, test, and package their applications in a reliable and repeatable way.
###
    Smaller Code Changes
    Fault Isolations
    Faster Mean Time To Resolution
    More Test Reliability
    Faster Release Rate
    Easy Maintenance and Updates
    Higher-Quality Code
### Pipeline
    A pipeline is the result of configuring Jobs and Resources together. When you configure a pipeline, it takes on a life of its own, to continuously detect resource versions and automatically queue new builds for jobs as they have new available inputs.

### Resources
    Resources like the git resource and s3 resource are used to express source code, dependencies, deployments, and any other external state. This interface is also used to model more abstract things like scheduled or interval triggers, via the time resource.

### Jobs
    Jobs are sequences of get, put, and task steps to execute. These steps determine the job's inputs and outputs. Jobs are designed to be idempotent and loosely coupled, allowing the pipeline to grow with the project's needs without requiring engineers to keep too much in their head at a time.

### Steps
    A step is a single container running on a Concourse worker. Each step in a job plan runs in its own container. You can run anything you want inside the container (i.e. run my tests, run this bash script, build this image, etc.).
    
    Each job has a single build plan configured as job.plan. A build plan is a recipe for what to run when a build of the job is created.

