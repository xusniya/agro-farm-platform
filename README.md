# Agro Farm Platform

Agro Farm Platform is a Django-based backend application that demonstrates a complete cloud-native DevOps workflow using Docker, Kubernetes (Kind), Helm, GitHub Actions (GHCR), and Prometheus monitoring.

---

## Tech Stack

- Backend: Django (Python)
- Containerization: Docker
- Orchestration: Kubernetes (Kind)
- Packaging: Helm
- CI/CD: GitHub Actions (GHCR)
- Monitoring: Prometheus (ServiceMonitor)

---

## Project Structure

agro-farm-platform/
- agro/
- config/
- charts/agro/
- monitoring/
  - agro-servicemonitor.yaml
- docs/
  - screenshots/
- Dockerfile
- docker-compose.yml
- entrypoint.sh
- requirements.txt
- README.md

---

## Quick Commands (Plain)

Docker build:
docker build -t agro-farm-platform .

Docker run:
docker run -p 8000:8000 agro-farm-platform

Kind cluster:
kind create cluster --name agro --config kind-config.yaml

Helm install:
helm upgrade --install agro charts/agro -n agriculture --create-namespace

Apply ServiceMonitor:
kubectl apply -f monitoring/agro-servicemonitor.yaml

---

## Screenshots

### Prometheus Targets
![Prometheus Targets](docs/screenshots/prometheus-targets.jpg)

### Kubernetes Pods
![Kubernetes Pods](docs/screenshots/k8s-pods.jpg)

### Helm Release
![Helm Release](docs/screenshots/helm-release.jpg)

### ServiceMonitor Applied
![ServiceMonitor](docs/screenshots/service-monitor.jpg)

### GitHub Actions Pipeline
![GitHub Actions](docs/screenshots/github-actions.jpg)

---

## CI/CD

GitHub Actions automatically builds and pushes Docker images to GitHub Container Registry (GHCR) when you push to the main branch.

---

## Author

Xusniya Turdiqulova  
GitHub: https://github.com/xusniya

---

## License

Educational and portfolio project.