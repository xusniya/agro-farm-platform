from django.urls import path
from .views import healthz, api_root

urlpatterns = [
    path("", api_root),
    path("healthz", healthz),
]