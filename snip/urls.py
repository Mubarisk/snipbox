from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import SnippetViewSet

router = DefaultRouter()
router.register(r"", SnippetViewSet, basename="snippet")

urlpatterns = [
    path("", include(router.urls)),
]
