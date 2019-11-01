FROM ubuntu

RUN apt-get update && apt-get install -y python3 \
    python3-pip
# Install jupyter framework
RUN pip3 install jupyter

# Create a new system user
RUN useradd -ms /bin/bash jupyter

# Change to this new user
USER jupyter

# Add local bin directory to path
ENV PATH="${PATH}:/home/jupyter/.local/bin"

# Install tensorflow in user context
RUN pip3 install --upgrade pip && \
	python3 -m pip install --upgrade tensorflow==2.0.0 --user

# Set the container working directory to the user home folder
WORKDIR /home/jupyter

# Persist data on host machine
VOLUME ${dataStore}:/home/jupyter

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]
