FROM debian

# Install python3, pipx, and uv
RUN apt-get update \
    && apt-get install -y python3 pipx \
    && apt-get clean \
    && pipx ensurepath \
    && pipx install uv

# Create project folder
RUN mkdir /home/app

# Set working directory
WORKDIR /home/app
