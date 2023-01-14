
# Project Title

A brief description of what this project does and who it's for


## Prerequisites

1. The server need to have **_docker_** and **_docker-compose_** command (usually the docker-compose is installed with the docker installation)
2. To deploy this project first we need to create a docker network.
    Run this command:

    `sudo docker network create jenkins-net`
    * In order to run the `sudo` command you will need root previlige on the machine
3. List of linux command being used:
    - `groupadd`
    - `useradd`
    - `chown`
4. Hardware Requirement:

    | Minimum Requirement	 | Recommended Requirement           
    | -------------          | -------------
    | 256MB+ of RAM	         | 1GB+ of RAM 
    | 1GB+ HDD Capacity	     | 50GB+ HDD Capacity          
    
## Deployment

Run this command:

`$ JENKINS_ADMIN_ID=[ENTER ADMIN USERNAME] JENKINS_ADMIN_PASSWORD=[ENTER ADMIN PASS] SERVER_IP=[ENTER YOUR SERVER IP] AGENT_PRIVATE_KEY=[ENTER AGENT PRIVATE KEY] JENKINS_AGENT_SSH_PUBKEY=[ENTER YOUR AGENT PUBLIC KEY] docker-compose -f ~/Aurora-Labs-Ex/docker-compose.yaml up -d`

* To end the deployment run: `docker-compose down`


## Appendix

* There is a Github token for the integration with jenkins that will expire on Mon, Feb 13 2023

