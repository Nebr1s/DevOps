# Flask Application with Docker Compose

This project demonstrates a containerized Flask web application using Docker Compose. The application includes a Flask web server and a Redis server, orchestrated together for easy deployment and development.

## Overview

This is a simple Flask web application that provides three main routes:

- **Home Page** (`/`) - Welcome page with navigation links
- **About Page** (`/about`) - Information about the application
- **Contact Page** (`/contact`) - Contact information

The application is containerized using Docker and orchestrated with Docker Compose, making it easy to run both the Flask application and Redis server together.

## Project Structure

```
.
├── compose.yaml      # Docker Compose configuration
├── dockerfile        # Dockerfile for Flask application
├── hello.py          # Flask application code
├── requirements.txt  # Python dependencies
└── README.md         # This file
```

## Features

- **Flask Web Application**: Simple web server with multiple routes
- **Redis Integration**: Redis server included for potential caching or session storage
- **Docker Containerization**: Both services run in isolated containers
- **Docker Compose**: Easy orchestration of multi-container setup
- **Port Mapping**: Flask app accessible on port 8080 (mapped from container port 5000)

## Prerequisites

- Docker
- Docker Compose

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Nebr1s/DevOps.git
cd DevOps
git checkout compose
```

### 2. Run with Docker Compose

```bash
docker-compose up --build
```

Or if you're using Docker Compose v2:

```bash
docker compose up --build
```

### 3. Access the Application

Once the containers are running, open your browser and navigate to:

```
http://localhost:8080
```

### 4. Stop the Application

Press `Ctrl+C` in the terminal, or run:

```bash
docker-compose down
```

## Services

### Flask Application (`flask-app`)

- **Image**: Built from local Dockerfile
- **Port**: 8080 (host) → 5000 (container)
- **Dependencies**: Redis server
- **Environment**: `PYTHONUNBUFFERED=1` for real-time logging

### Redis Server (`redis-server`)

- **Image**: `redis:latest`
- **Restart Policy**: `unless-stopped`
- **Purpose**: Provides Redis functionality for the application

## Technologies Used

- **Python 3.11**: Base Python version
- **Flask 3.0.3**: Web framework
- **Redis 5.2.1**: In-memory data structure store
- **Docker**: Containerization platform
- **Docker Compose**: Multi-container orchestration

## Development

The Flask application runs on port 5000 inside the container and is exposed on port 8080 on the host machine. The application includes three routes:

- `/` - Home page
- `/about` - About page
- `/contact` - Contact page

## Building Manually

If you want to build the Docker image manually:

```bash
docker build -t flask-app .
```

Then run it:

```bash
docker run -p 8080:5000 flask-app
```

## License

This project is part of a DevOps course assignment.
