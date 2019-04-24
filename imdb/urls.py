# urls.py
from django.contrib import admin
from django.urls import include, path
from rest_framework.documentation import include_docs_urls

urlpatterns = [
    path('', include_docs_urls(title='IMDB Movies API')),
    path('admin/', admin.site.urls),
    path('imdb/api/', include('api.urls')),
]