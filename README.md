Agro Farm Platform
=================

Agro Farm Platform is a Django-based backend application that demonstrates
a complete cloud-native DevOps workflow using Docker, Kubernetes, Helm,
GitHub Actions, and Prometheus monitoring.

--------------------------------------------------

Tech Stack
----------

Backend: Django (Python)
Containerization: Docker
Orchestration: Kubernetes (Kind)
Packaging: Helm
CI/CD: GitHub Actions (GHCR)
Monitoring: Prometheus (ServiceMonitor)

--------------------------------------------------

Project Structure
-----------------

agro-farm-platform
- agro
- config
- charts/agro
- monitoring
  - agro-servicemonitor.yaml
- docs
  - screenshots
- Dockerfile
- docker-compose.yml
- entrypoint.sh
- requirements.txt
- README.md

--------------------------------------------------

Docker Usage
------------

Build image:
docker build -t agro-farm-platform .

Run container:
docker run -p 8000:8000 agro-farm-platform

Application URL:
http://localhost:8000

--------------------------------------------------

Kubernetes Deployment
---------------------

Create cluster:
kind create cluster --name agro --config kind-config.yaml

Install using Helm:
helm upgrade --install agro charts/agro -n agriculture --create-namespace

Check pods:
kubectl get pods -n agriculture

--------------------------------------------------

Monitoring
----------

Apply ServiceMonitor:
kubectl apply -f monitoring/agro-servicemonitor.yaml

--------------------------------------------------

Screenshots
-----------

Prometheus Targets
docs/screenshots/prometheus-targets.jpg

Kubernetes Pods
docs/screenshots/k8s-pods.jpg

Helm Release
docs/screenshots/helm-release.jpg

ServiceMonitor
docs/screenshots/service-monitor.jpg

GitHub Actions Pipeline
docs/screenshots/github-actions.jpg

--------------------------------------------------

CI/CD
-----

GitHub Actions automatically builds and pushes Docker images
to GitHub Container Registry on every push to main branch.

--------------------------------------------------

Author
------

Xusniya Turdiqulova
GitHub: https://github.com/xusniya

--------------------------------------------------

License
-------

Educational and portfolio project.
