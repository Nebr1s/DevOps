# Docker Flask Application

A simple Flask web application containerized with Docker that provides a multi-page website with navigation between home, about, and contact pages.

## Project Structure

```
├── dockerfile         # Docker configuration
├── hello.py           # Flask application
├── requirements.txt   # Python dependencies
└── README.md          # This file
```

## Features

- **Home Page**: Welcome message with navigation links
- **About Page**: Information about the application
- **Contact Page**: Contact information and email
- **Dockerized**: Ready to run in a containerized environment

## Prerequisites

- Docker installed on your system
- Git (optional, for cloning the repository)

## Quick Start

### Access the Application

Open your web browser and navigate to:

- **Home Page**: http://localhost:5000
- **About Page**: http://localhost:5000/about
- **Contact Page**: http://localhost:5000/contact

## Docker Commands

### Build the image

```bash
docker build -t flask-hello-app .
```

### Run the container

```bash
docker run -p 5000:5000 flask-hello-app
```

### Run in detached mode (background)

```bash
docker run -d -p 5000:5000 --name my-flask-app flask-hello-app
```

### Stop the container

```bash
docker stop my-flask-app
```

### Remove the container

```bash
docker rm my-flask-app
```

### Remove the image

```bash
docker rmi flask-hello-app
```

## Application Details

- **Framework**: Flask 3.0.3
- **Python Version**: 3.14
- **Port**: 5000
- **Host**: 0.0.0.0 (accessible from outside the container)

## Development

To modify the application:

1. Edit `hello.py` with your changes
2. Rebuild the Docker image: `docker build -t flask-hello-app .`
3. Run the updated container: `docker run -p 5000:5000 flask-hello-app`

### Requirements

- This should be in a `requirements.txt` file which contains:

```txt
flask == 3.0.3
```
