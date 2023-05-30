# Docker Interview Questions

1. **What is Docker?**

   Docker is an open-source lightweight containerization technology. It has gained widespread popularity in the cloud and application packaging world. It allows you to automate the deployment of applications in lightweight and portable containers.

2. **What are the advantages of using Docker container?**

   Here are the major advantages of using Docker containers:

   - Offers an efficient and easy initial setup
   - Allows you to describe your application lifecycle in detail
   - Provides simple configuration and interacts with Docker Compose
   - Documentation provides every bit of information

3. **What are the important features of Docker?**

   Here are the essential features of Docker:

   - Easy modeling
   - Version control
   - Placement/Affinity
   - Application agility
   - Developer productivity
   - Operational efficiencies

4. **What are the main drawbacks of Docker?**

   Some notable drawbacks of Docker are:

   - Doesn't provide a storage option
   - Offers a poor monitoring option
   - No automatic rescheduling of inactive nodes
   - Complicated automatic horizontal scaling setup

5. **What is a Docker image?**

   A Docker image helps to create Docker containers. You can create a Docker image with the build command, and it creates a container that starts running when initiated. Docker images are stored in the Docker registry.

6. **What is Docker Engine?**

   Docker Engine, also known as the Docker daemon, represents the server. The Docker daemon and the clients should be run on the same or remote host, which can communicate through a command-line client binary and a full RESTful API.

7. **Explain Registries**

   There are two types of registries:

   - Public Registry
   - Private Registry

   Docker's public registry is called Docker Hub, which allows you to store images privately. In Docker Hub, you can store millions of images.

8. **What command should you run to see all running containers in Docker?**

   `$ docker ps`

9. **Write the command to stop a Docker container**

   `$ sudo docker stop <container_name>`

10. **What is the command to run an image as a container?**

    `$ sudo docker run -i -t <image_name> /bin/bash`

11. **What are the common instructions in a Dockerfile?**

    The common instructions in a Dockerfile are `FROM`, `LABEL`, `RUN`, and `CMD`.

12. **What is the memory-swap flag?**

    The memory-swap flag is a modified flag that only has meaning if memory is also set. Swap allows the container to write excess memory requirements to disk when the container has exhausted all the available RAM.

13. **Explain Docker Swarm?**

    Docker Swarm is a native clustering and orchestration solution for Docker that allows you to group Docker hosts into a single virtual Docker host. It offers the standard Docker application programming interface.

14. **How can you monitor Docker in production environments?**

    Docker states and Docker Events are used to monitor Docker in production environments.

15. **What are the states of a Docker container?**

    The important states of a Docker container are:

    - Running
    - Paused
    - Restarting
    - Exited

16. **What is Docker Hub?**

    Docker Hub is a cloud-based registry that allows you to link to code repositories. It allows you to build, test, and store your images in Docker Cloud. You can also deploy the image to your host using Docker Hub.

17. **What is virtualization?**

    Virtualization is a method of logically dividing mainframes to allow multiple applications to run simultaneously. It allows multiple operating systems to run simultaneously on

 a single x86-based system.

18. **What is a Hypervisor?**

    A hypervisor allows you to create a virtual environment in which guest virtual machines operate. It controls the guest systems and checks if the resources are allocated to the guests as necessary.

19. **Explain Docker object labels**

    Docker object labels are a method for applying metadata to Docker objects, including images, containers, volumes, networks, swarm nodes, and services.

20. **Write a Dockerfile to create and copy a directory and build it using Python modules?**

    ```dockerfile
    FROM python:2.7-slim

    WORKDIR /app

    COPY . /app

    docker build --tag <tag_name> .
    ```

21. **Where are Docker volumes stored?**

    Docker volumes are stored in the following directory:

    `/var/lib/docker/volumes`

22. **List out some important advanced Docker commands**

    Command | Description
    --- | ---
    `docker info` | Information command
    `docker pull` | Download an image
    `docker stats` | Container information
    `docker images` | List of downloaded images

23. **How does communication happen between Docker client and Docker Daemon?**

    Communication between the Docker client and Docker Daemon occurs through a combination of REST API, socket.IO, and TCP.

24. **Explain the implementation method of Continuous Integration (CI) and Continuous Development (CD) in Docker?**

    To implement Continuous Integration (CI) and Continuous Development (CD) in Docker, you can follow these steps:

    - Run Jenkins on Docker.
    - Use Docker Compose to run integration tests in Jenkins.

25. **What are the commands to control Docker with Systemd?**

    The commands to control Docker with Systemd are:

    ```
    systemctl start/stop docker
    service docker start/stop
    ```

26. **How to use JSON instead of YAML compose file?**

    To use JSON instead of a YAML compose file, use the following command:

    ```
    docker-compose -f docker-compose.json up
    ```

27. **What is the command to push a new image to the Docker registry?**

    ```
    docker push <image_name>
    ```

28. **How do you include code with copy/add or volumes?**

    In a Dockerfile, you can use the `COPY` or `ADD` directive to include code. However, if you want to make changes, you should use a volume.

29. **Explain the process of scaling your Docker containers**

    Docker containers can be scaled to any level, from a few hundred to even thousands or millions of containers. The only condition is that the containers need the memory and the operating system resources. Scaling is achieved by replicating the containers.

30. **What is the method for creating a Docker container?**

    You can use a specific Docker image to create a Docker container using the following command:

    ```
    docker run -t -i <image_name> <command_name>
    ```

    This command creates the container and starts it.

31. **What are the steps for the Docker container lifecycle?**

    The steps for the Docker container lifecycle are:

    - Build
    - Pull
    - Run

32. **How can you run multiple containers using a single service?**

    Using Docker Compose, you can run multiple containers using a single service. Docker Compose files use YAML language for configuration.

33. **What is CNM?**

    CNM stands for Container Networking Model. It is a standard or specification from Docker, Inc. that forms the basis of container networking in a Docker environment. CNM provides container networking with support for multiple network

 drivers.

34. **Does Docker offer support for IPv6?**

    Yes, Docker provides support for IPv6. IPv6 networking is supported only on Docker daemons running on Linux hosts. To enable IPv6 support, modify the `/etc/docker/daemon.json` file and set the `ipv6` key to `true`.

35. **Can you lose data when the container exits?**

    No, any data that your application writes to disk is stored within the container. The file system for the container persists even after the container halts.

36. **What are the different kinds of volume mount types available in Docker?**

    The different kinds of volume mount types available in Docker are:

    - Bind mounts: Can be stored anywhere on the host system

37. **How do you configure the default logging driver under Docker?**

    To configure the Docker daemon to use a specific logging driver by default, set the value of `log-driver` to the desired logging driver in the `daemon.json` file.

38. **Explain Docker Trusted Registry**

    Docker Trusted Registry is an enterprise-grade image storage tool for Docker. It allows you to securely manage Docker images used in your applications. It is typically installed behind a firewall.

39. **What are Docker Namespaces?**

    Docker Namespaces are a technique that offers isolated workspaces called containers. Namespaces provide a layer of isolation for Docker containers.

40. **What are the three components of Docker Architecture?**

    The three components of Docker Architecture are:

    - Client
    - Docker Host
    - Registry

41. **What is a client in Docker Architecture?**

    The client in Docker Architecture refers to the Docker Command Line Interface (CLI) tools that allow users to interact with the Docker daemon.

42. **What is the purpose of Docker Host in Docker Architecture?**

    The Docker Host contains the containers, images, and the Docker daemon. It provides a complete environment to execute and run your applications.

43. **How can you run multiple copies of a Compose file on the same host?**

    To run multiple copies of a Compose file on the same host, you can set a custom project name using the `-p` or `--project-name` command-line option or by using the `COMPOSE_PROJECT_NAME` environment variable.

These interview questions can also be helpful in your viva (oral) examination.