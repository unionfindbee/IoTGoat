FROM debian:12-slim

# Install dependencies
RUN apt -y update && apt -y install \
    curl \
    uuid-runtime 

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into working directory
COPY . .

# Run run_mcode.sh
RUN ./run_mcode.sh