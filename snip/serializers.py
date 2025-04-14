from rest_framework import serializers
from .models import Snippet, Tag
from rest_framework.reverse import reverse


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ["id", "title"]


class SnippetSerializer(serializers.ModelSerializer):
    tag = serializers.CharField()

    class Meta:
        model = Snippet
        fields = ["id", "title", "note", "created_at", "updated_at", "tag"]

    def create(self, validated_data):
        tag_title = validated_data.pop("tag")
        tag, created = Tag.objects.get_or_create(
            title=tag_title, user=self.context["request"].user
        )
        return Snippet.objects.create(
            tag=tag, user=self.context["request"].user, **validated_data
        )


class HyperLinkSnippetSerializer(serializers.ModelSerializer):
    url = serializers.SerializerMethodField()

    class Meta:
        model = Snippet
        fields = [
            "id",
            "title",
            "note",
            "created_at",
            "updated_at",
            "url",
        ]

    def get_url(self, obj):
        request = self.context.get("request")
        return reverse("snippet-detail", args=[obj.pk], request=request)
