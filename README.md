**Created a simple Hello World program that I will containerize using Docker**
**Step 1: Creating the Dockerfile**
From python:latest            First I will pull an ubuntu image with latest version of python installed in it

RUN apt-get update            Running this command to update the system packages

COPY . /docker_assignment/    To copy the source code

ENTRYPOINT app.py	      Entrypoint to run the code

**Step 2: To build the docker image, I will run the below command in cmd**
docker build -f Dockerfile.dockerfile -t assignment_1 .

**LOGS:**
[+] Building 203.3s (8/8) FINISHED                                                                                                         docker:default
 => [internal] load .dockerignore                                                                                                                    0.1s
 => => transferring context: 2B                                                                                                                      0.0s 
 => [internal] load build definition from Dockerfile.dockerfile                                                                                      0.1s 
 => => transferring dockerfile: 139B                                                                                                                 0.0s 
 => [internal] load metadata for docker.io/library/python:latest                                                                                     3.8s
 => [1/3] FROM docker.io/library/python:latest@sha256:bc1d76a8360d77a6ab467a8c48ce40369707c9aa76492df094968ce55cca88ae                             185.8s
 => => resolve docker.io/library/python:latest@sha256:bc1d76a8360d77a6ab467a8c48ce40369707c9aa76492df094968ce55cca88ae                               0.2s 
 => => sha256:bc1d76a8360d77a6ab467a8c48ce40369707c9aa76492df094968ce55cca88ae 2.14kB / 2.14kB                                                       0.0s 
 => => sha256:a5fee9aa0e3aa4d1c4481b37175b44e76d5757ea84fe2b2836bc8d8d75f7f8e4 7.53kB / 7.53kB                                                       0.0s
 => => sha256:785ef8b9b236a5f027f33cae77513051704c0538bff455ff5548105c954c3b1c 49.56MB / 49.56MB                                                    49.1s
 => => sha256:7d57b1fef9b7fda8bf331b971a3ca96c3214313666fafdf26d33f1d0e6399222 2.01kB / 2.01kB                                                       0.0s
 => => sha256:5a6dad8f55ae6c733e986316bd08205c8b2c41640bf8d08ff6e9bbcb6884304f 24.03MB / 24.03MB                                                    26.9s
 => => sha256:bd36c7bfe5f4bdffcc0bbb74b0fb38feb35c286ea58b5992617fb38b0c933603 64.11MB / 64.11MB                                                    90.5s
 => => sha256:4d207285f6d296b9806bd00340437406c25207412c52fcfcbf229a5ecff7bf94 211.03MB / 211.03MB                                                 145.0s
 => => sha256:9402da1694b8dae94a0cb89a2719ce24a909e809b22c31d39edee8e18b3d300b 6.39MB / 6.39MB                                                      59.0s
 => => extracting sha256:785ef8b9b236a5f027f33cae77513051704c0538bff455ff5548105c954c3b1c                                                           18.6s
 => => sha256:9bdbf45d01af5880bbab0120b825cc0f237835fd253f54a79b396519ea250daf 19.76MB / 19.76MB                                                    83.7s 
 => => extracting sha256:5a6dad8f55ae6c733e986316bd08205c8b2c41640bf8d08ff6e9bbcb6884304f                                                            6.0s 
 => => sha256:dd8b7ef87a9d8f73f1da40f467d7878182e591a6ab390005d401c4e59928c8e2 244B / 244B                                                          84.9s 
 => => sha256:40e2122a202cbb4965b95ff38b0f7b68844fd3f1d68a9a5362b28913f42195d4 3.09MB / 3.09MB                                                      88.7s 
 => => extracting sha256:bd36c7bfe5f4bdffcc0bbb74b0fb38feb35c286ea58b5992617fb38b0c933603                                                           21.1s 
 => => extracting sha256:4d207285f6d296b9806bd00340437406c25207412c52fcfcbf229a5ecff7bf94                                                           31.8s 
 => => extracting sha256:9402da1694b8dae94a0cb89a2719ce24a909e809b22c31d39edee8e18b3d300b                                                            1.9s 
 => => extracting sha256:9bdbf45d01af5880bbab0120b825cc0f237835fd253f54a79b396519ea250daf                                                            3.1s 
 => => extracting sha256:dd8b7ef87a9d8f73f1da40f467d7878182e591a6ab390005d401c4e59928c8e2                                                            0.0s 
 => => extracting sha256:40e2122a202cbb4965b95ff38b0f7b68844fd3f1d68a9a5362b28913f42195d4                                                            1.3s 
 => [internal] load build context                                                                                                                    0.2s
 => => transferring context: 194B                                                                                                                    0.0s 
 => [2/3] RUN apt-get update                                                                                                                        12.4s 
 => [3/3] COPY . /docker_assignment/                                                                                                                 0.3s 
 => exporting to image                                                                                                                               0.6s 
 => => exporting layers                                                                                                                              0.5s 
 => => writing image sha256:55efe1b9cb9391925ee15c57b342f4326f68b316d63a61f8af7e0895e8b48d5a                                                         0.0s 
 => => naming to docker.io/library/assignment_1                                                                                                      0.0s

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview

**Step 3: Push the Docker Image to Docker Hub**
**i) Created a new repo in Docker Hub with name "getting-started"**
**ii. Used this command to signin to DockerHub**
	docker login -u YOUR-USER-NAME

**iii) Used the docker tag command to tag my image "assignment_1"**
docker tag assignment_1:latest zahydakhan/getting-started:latest

**iv) Used the docker images command to view tagged image**
docker images
**LOG:**
REPOSITORY                   TAG       IMAGE ID       CREATED        SIZE
assignment_1                 latest    55efe1b9cb93   3 hours ago    1.03GB
zahydakhan/getting-started   latest    55efe1b9cb93   3 hours ago    1.03GB
test-app                     latest    e2f13924f8a6   29 hours ago   124MB

**v) Now the push to image Docker Hub**
docker push zahydakhan/getting-started:latest

**LOG:**
The push refers to repository [docker.io/zahydakhan/getting-started]
269f7e297a5b: Pushed
0a224378b11d: Pushed
f13cae6d5fe9: Pushed
8729b6a044ba: Pushed
5c0fbc8e3c3d: Pushed
c5f1d4dd95f0: Pushed
6a25221bdf24: Pushed
b578f477cd5d: Pushed
b298f9991a11: Pushed
c94dc8fa3d89: Pushed
latest: digest: sha256:ff44cfa373fa1e51283303582d60269794de6464928fc88ec1b833b30b28045c size: 2426

**URL of DockerHub Repo:** https://hub.docker.com/repository/docker/zahydakhan/getting-started/general

**Step 4: Created a Github repo
Step 5: Create READ.md file**

**Step 6: Push the Codebase to GitHub. **
**i) To initiate a local git repo**
git init
**ii) Change the local branch to main**
git branch -m master main

**iii) To add code to the staging area**
git add .
**iv) To Commit changes to the local repo**
git commit -m "Initial Commit"

**LOG:**
[main (root-commit) 9116352] Initial Commit
 2 files changed, 8 insertions(+)
 create mode 100644 Dockerfile.dockerfile
 create mode 100644 app.py

**v) To add the remote repo to my local git repo**
git remote add origin https://github.com/zahydakhan/docker-assignment.git
**vi) To push the code to the remote repo**
git push -u -f origin main

**LOG:**
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 369 bytes | 369.00 KiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/zahydakhan/docker-assignment.git
 + 449adf1...9116352 main -> main (forced update)
branch 'main' set up to track 'origin/main'.
