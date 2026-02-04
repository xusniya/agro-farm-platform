#  Agro Farm Platform

Agro Farm Platform is a **Django-based backend platform** that demonstrates a full
**cloud-native DevOps workflow** using Docker, Kubernetes, Helm, and GitHub Actions.

---

##  Tech Stack

- Backend: Django (Python)
- Containerization: Docker
- Orchestration: Kubernetes (Kind)
- Packaging: Helm
- CI/CD: GitHub Actions (GHCR)
- Monitoring: Prometheus (ServiceMonitor)

---

##  Project Structure

\\\
agro-farm-platform/
 agro/
 config/
 charts/agro/
 monitoring/
    agro-servicemonitor.yaml
 docs/screenshots/
 Dockerfile
 docker-compose.yml
 entrypoint.sh
 requirements.txt
 README.md
\\\

---

##  Run with Docker

\\\ash
docker build -t agro-farm-platform .
docker run -p 8000:8000 agro-farm-platform
\\\

Open: http://localhost:8000

---

##  Kubernetes Deployment (Helm)

\\\ash
kind create cluster --name agro --config kind-config.yaml
helm upgrade --install agro charts/agro -n agriculture --create-namespace
\\\

Check:
\\\ash
kubectl get pods -n agriculture
\\\

---

##  Monitoring (Prometheus)

Apply ServiceMonitor:
\\\ash
kubectl apply -f monitoring/agro-servicemonitor.yaml
\\\

---

##  Screenshots

### Prometheus Targets
![Prometheus Targets](docs/screenshots/prometheus-targets.jpg)

### Kubernetes Pods
![Kubernetes Pods](docs/screenshots/k8s-pods.jpg)

### Helm Release
![Helm Release](docs/screenshots/helm-release.jpg)

### ServiceMonitor Applied
![Service Monitor](docs/screenshots/service-monitor.jpg)

### GitHub Actions Pipeline
![GitHub Actions](docs/screenshots/github-actions.jpg)

---

##  CI/CD

GitHub Actions automatically builds and pushes Docker images to
**GitHub Container Registry (GHCR)**.

---

##  Author

**Xusniya Turdiqulova**  
GitHub: https://github.com/xusniya

---

##  License

Educational & portfolio project.
