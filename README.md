# Kubernetes Lab 7 - Flask Application with Redis

This project demonstrates a containerized Flask application deployed on Kubernetes with Redis as a supporting service.

## Project Overview

This lab includes:
- A Flask web application with multiple routes
- Redis server deployment
- Docker containerization
- Kubernetes deployments and services
- Load balancer configuration

## Components

### Flask Application (`hello.py`)
A simple Flask web application with three routes:
- `/` - Home page with navigation links
- `/about` - About page
- `/contact` - Contact page

### Docker Configuration
- **Dockerfile**: Containerizes the Flask application using Python 3.11-slim
- **compose.yaml**: Docker Compose configuration for local development with Flask app and Redis

### Kubernetes Manifests
- **flask-app-deploy.yaml**: Deployment configuration for the Flask application (5 replicas)
- **redis-server-deployment.yaml**: Deployment configuration for Redis server
- **redis-services.yaml**: Service configuration for Redis
- **load-balancer.yaml**: LoadBalancer service for the Flask application

### Utilities
- **port-forward.py**: Python script for port forwarding to Kubernetes services

## Requirements

- Python 3.11+
- Flask 3.0.3
- Redis 5.2.1
- Docker
- Kubernetes cluster

## Installation

1. Install Python dependencies:
```bash
pip install -r requirements.txt
```

2. Build Docker image:
```bash
docker build -t my_flask_image .
```

3. Deploy to Kubernetes:
```bash
kubectl apply -f flask-app-deploy.yaml
kubectl apply -f redis-server-deployment.yaml
kubectl apply -f redis-services.yaml
kubectl apply -f load-balancer.yaml
```

## Usage

### Local Development
Run with Docker Compose:
```bash
docker-compose up
```

The Flask application will be available at `http://localhost:8080`

### Kubernetes Deployment
After deploying, access the application through the LoadBalancer service or use port forwarding:
```bash
kubectl port-forward service/flaskapp-service 8080:80
```

## Project Structure

```
.
├── hello.py                      # Flask application
├── requirements.txt              # Python dependencies
├── dockerfile                    # Docker image configuration
├── compose.yaml                  # Docker Compose configuration
├── flask-app-deploy.yaml         # Flask app Kubernetes deployment
├── redis-server-deployment.yaml  # Redis Kubernetes deployment
├── redis-services.yaml           # Redis service configuration
├── load-balancer.yaml            # LoadBalancer service
├── port-forward.py               # Port forwarding utility
└── README.md                     # This file
```

## Notes

- The Flask application runs on port 5000 inside the container
- The LoadBalancer service exposes the app on port 80
- Redis is deployed as a separate service for potential future integration
- The deployment uses 5 replicas for high availability

