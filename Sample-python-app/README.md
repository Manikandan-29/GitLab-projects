# Sample-Python-App Deployed in Git-Lab . 
# Description
It is a sample git-lab python project that uses Customize runners (AWS linux) along with Variables.
# Prerequisites
 1.Any linux, windows, mac machine .
 
2.Git-lab Account.

3.Docker Account .

# Setup

* Login to Git-lab.
* Create new project. 
* Setup Runners ( After creating project -> settings -> CI/CD -> Runners (expand)-> Setup new runner with those instruction provided by Git-lab.
```
# Download the binary for your system
sudo curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

# Give it permission to execute
sudo chmod +x /usr/local/bin/gitlab-runner

# Create a GitLab Runner user
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# Install and run as a service
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner

# Leave Default setings & provide tags : server, ec2 & Executor : Shell


sudo gitlab-runner start 
sudo gitlab-runner status
```

* Install [Docker](https://docs.docker.com/engine/install/) in your linux machine and give permissions to git-lab runner ```sudo usermod -aG docker gitlab-runner ``` and restart docker image. 

* Now, you can see your runner in Git-lab Runner Dashboard.
 * Create a Variables for docker login, settings -> CI/CD -> Variables -> Expand -> add variables ->
Key =```"DOCKER_USERNAME"```, value =```"your docker username"```
* Similarly, Create variable for Password , Key=```"TOKEN"``` , value =```"generate token from docker-hub or enter your Docker-hub password"```

* Clone the Repo which include ([gitlab-ci.yml](), [Dockerfile](), [app.py]()) and run your pipeline.

# Checks
 * In your Runner, you can see that docker images are created and container are running.
# OUTPUT
* Copy your ip address paste it in your Browser.
