FROM debian:12-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    clang \
    llvm \
    make \
    cmake \
    libfuzzer-llvm-dev \
    && rm -rf /var/lib/apt/lists/* 

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into working directory
COPY . .
