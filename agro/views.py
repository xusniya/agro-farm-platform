from django.shortcuts import render

from django.http import JsonResponse

def api_root(request):
    return JsonResponse({"service": "agro-farm-platform", "status": "ok"})

def healthz(request):
    return JsonResponse({"ok": True})
