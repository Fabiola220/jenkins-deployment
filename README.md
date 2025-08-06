# Advanced DevOps Project

This project demonstrates a full CI/CD pipeline using Jenkins, Docker, and Kubernetes for deploying a complex, multi-container application.

## Project Structure

```
advanced-devops-project
├── jenkins
│   ├── Jenkinsfile          # CI/CD pipeline definition
│   └── scripts
│       └── deploy.sh        # Deployment script for Kubernetes
├── docker
│   ├── app1
│   │   └── Dockerfile       # Dockerfile for app1
│   ├── app2
│   │   └── Dockerfile       # Dockerfile for app2
│   └── docker-compose.yml    # Docker Compose file for multi-container setup
├── k8s
│   ├── app1-deployment.yaml  # Kubernetes deployment for app1
│   ├── app1-service.yaml     # Kubernetes service for app1
│   ├── app2-deployment.yaml  # Kubernetes deployment for app2
│   ├── app2-service.yaml     # Kubernetes service for app2
│   └── ingress.yaml          # Ingress resource for routing
├── src
│   ├── app1
│   │   └── main.py          # Main application logic for app1
│   └── app2
│       └── main.py          # Main application logic for app2
├── .gitignore                # Git ignore file
└── README.md                 # Project documentation
```

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd Jenkins-CICD-Pipeline-with-Docker-and-Kubernetes
   ```

2. **Build Docker Images**
   Navigate to the `docker` directory and build the images:
   ```bash
   cd docker
   docker-compose build
   ```

3. **Run the Application Locally**
   You can run the application locally using Docker Compose:
   ```bash
   docker-compose up
   ```

4. **Deploy to Kubernetes**
   Ensure you have access to a Kubernetes cluster and `kubectl` is configured. Run the deployment script:
   ```bash
   cd jenkins/scripts
   ./deploy.sh
   ```

5. **Access the Application**
   If using ingress, configure your DNS or `/etc/hosts` file to point to the ingress controller's IP. Access the applications via the specified hostnames.

## Usage

- The CI/CD pipeline is defined in the `jenkins/Jenkinsfile`. It includes stages for building, testing, and deploying the applications.
- The `docker/docker-compose.yml` file defines how to run the multi-container application locally.
- Kubernetes manifests in the `k8s` directory define how to deploy and expose the applications in a Kubernetes cluster.

## Contributing

Feel free to submit issues or pull requests for improvements or bug fixes. 
