# Hello World Server with Docker

This is a simple Node.js server that serves "Hello, World!" using the Express.js framework, containerized with Docker. For training in AWS, GCP, TERRAFORM, PUPPET, ANSIBLE, GRAFANA And PROMETHEUS

## Prerequisites

Before running the server, make sure you have Docker installed on your machine. You can download it from [here](https://www.docker.com/get-started).

## Installation

1. Clone this repository or download the source code.
2. Navigate to the project directory in your terminal.

## Building the Docker Image

To build the Docker image, run the following command:

```bash
docker build -t hello-world-server .
```

## Running the Docker Container

Once the Docker image is built, you can run the container using the following command:

```bash
docker run -p 3000:3000 hello-world-server .
```

The server will be accessible at http://localhost:3000 in your web browser, and you should see "Hello, World!" displayed.


## Dockerfile Explanation

- `FROM node:18`: Sets the base image to Node.js version 18.
- `WORKDIR /app`: Sets the working directory inside the Docker container to /app.
- `COPY package*.json ./`: Copies package.json and package-lock.json files to the working directory.
- `RUN npm install`: Installs dependencies defined in package.json.
- `COPY . .`: Copies all files from the current directory to the working directory in the Docker container.
- `EXPOSE 3000`: Exposes port 3000 to the host machine.
- `CMD [ "npm", "run", "dev" ]`: Specifies the command to run the server when the container starts.

- 
## Dockerfile Explanation

- `FROM node:18`: Sets the base image to Node.js version 18.
- `WORKDIR /app`: Sets the working directory inside the Docker container to /app.
- `COPY package*.json ./`: Copies package.json and package-lock.json files to the working directory.
- `RUN npm install`: Installs dependencies defined in package.json.
- `COPY . .`: Copies all files from the current directory to the working directory in the Docker container.
- `EXPOSE 3000`: Exposes port 3000 to the host machine.
- `CMD [ "npm", "run", "dev" ]`: Specifies the command to run the server when the container starts.

## Dependencies

This project uses the following dependencies:

- [Express.js](https://expressjs.com/): A web application framework for Node.js
