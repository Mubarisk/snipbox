from rest_framework import viewsets, permissions
from .models import Snippet, Tag
from .serializers import (
    SnippetSerializer,
    TagSerializer,
    HyperLinkSnippetSerializer,
)
from rest_framework.response import Response
from rest_framework.decorators import action


class SnippetViewSet(viewsets.ModelViewSet):
    queryset = Snippet.objects.all()
    serializer_class = SnippetSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        return self.queryset.filter(user=self.request.user)

    @action(
        detail=False,
        methods=["get"],
        url_path="overview",
        name="overview-snippets",
    )
    def overview(self, request):
        snippets = self.get_queryset()
        serializer = HyperLinkSnippetSerializer(
            snippets, many=True, context={"request": request}
        )
        return Response(
            {"total_snippets": snippets.count(), "snippets": serializer.data}
        )


class TagViewSet(viewsets.ModelViewSet):
    serializer_class = TagSerializer
    permission_classes = [permissions.IsAuthenticated]
    http_method_names = ["list", "retrieve"]

    def get_queryset(self):
        return Tag.objects.filter(user=self.request.user)
