# Jupyter Notebook (Dockerised)

## INTRODUCTION

As the Living Open Source Foundation forges its path of fostering technological advances throughout the African continent. Its is striving at building an ecosystem of learning and training in a wide array of Free Open Source Software technologies.

Because the organisation was founded on the basis of openess, we are always making the source code that powers our systems and tools available to anyone interested in having a look.

This is a repository containing the Living Open Source Foundation Code Lab running in a docker container built on top of an ubuntu image.

## INSTALLATION

 To run this build, you need to have docker installed on your machine. Proceed as instructed to install it.

### DOCKER FOR CentOS(RHEL)

Update your repositories with:

```bash
sudo yum update
```

Enable the epel repos:

```bash
sudo yum install epel-release
```

### DOCKER FOR UBUNTU(DEBIAN)

For most debian based opearting systems, docker is part of the default repository.
If its not there, add it to the repositories with the following commands

Create the file in the apt sources directory:

```bash
sudo touch /etc/apt/sources.list.d/docker.list
```
Then add the debian link to docker sources.

```bash
echo "deb [arcch=amd64] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list
```

Then update your repositories with:

```bash
sudo apt update
```

At this point you can now install docker/docker-compose

```bash
sudo apt install docker docker-compose
```

### SPINNING UP LinuxBox

Go to the installation directory, then execute.

```bash
git clone https://github.com/living-opensource-zambia/jupyter-notebook-docker.git
```
After the cloning is done, go to the jupyter-notebook-docker directory, by typing:

```bash
cd jupyter-notebook-docker
```

And finally to build the container, run:

```bash
docker build -t los-jupyter -d -p 8888:8888 .
```

The above command will run the container in detached mode and have it listen on port 8888 on host machine, mapped onto 8888 inside the container.

## LICENSE

This is an open source project released under the [MIT licence](LICENSE.md), meaning anyone with access to this code can literally do whatever pleases them with the code.
The author(s) of this source code, do not in any way assume any lose and/or damanage that may arise from the use or acquisition of this software.

## CONTRIBUTING

If you have any feature request and/or want to add a few whistles and bells, feel free to contact us.
To get more information about contributing, please [click here](CONTRIBUTING.md)

#  Happy Coding ...
### Thanks :joy:
### Living Open Source Foundation Zambia
