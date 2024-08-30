# Use the official Ubuntu image as the base image
FROM ubuntu:20.04

# Set the environment variable to non-interactive to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace

# Copy the current directory contents into the container at /workspace
COPY . /workspace

# Run any additional setup commands here
