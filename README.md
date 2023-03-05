# Aurora Labs EX

This project provide us a running Jenkins server, that will initiate a python job on any merge request


## Prerequisites

1. The server need to have **_docker_** and **_docker-compose_** command (usually the docker-compose is installed with the docker installation)
2. Hardware Requirement:

    | Minimum Requirement	 | Recommended Requirement           
    | -------------          | -------------
    | 256MB+ of RAM	         | 1GB+ of RAM 
    | 1GB+ HDD Capacity	     | 50GB+ HDD Capacity          
    
## Deployment

Run this command:

**`docker-compose up -d $(echo "JENKINS_ADMIN_USERNAME=admin"; echo "JENKINS_ADMIN_PASSWORD=admin"; echo "AGENT_PRIVATE_KEY=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" | xargs)
`**

* To end the deployment run: 
    * `docker-compose down`
* To clean the environment run this 2 commands:
    * `docker volume prune`
    * `docker rmi $(docker images -a -q)`
