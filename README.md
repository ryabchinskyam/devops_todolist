name: Build and Push Docker Image

on:
  push:
    branches:
      - main
  pull_request:

jobs:
  build-and-push:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v3

      - name: Set up Docker Buildx
        uses: docker/setup-buildx-action@v2

      - name: Login to Docker Hub
        uses: docker/login-action@v2
        with:
          username: ${{ secrets.DOCKERHUB_USERNAME }}
          password: ${{ secrets.DOCKERHUB_TOKEN }}

      - name: Build and Push todoapp image
        uses: docker/build-push-action@v3
        with:
          context: .
          file: Dockerfile
          push: true
          tags: ${{ secrets.DOCKERHUB_USERNAME }}/todoapp:1.0.0
