# 🚀 Django ToDo App — Dockerized

## 🧱 Build Docker image
```bash
docker build -t yourusername/todoapp:1.0.0 .
Fork this repository.
The ToDo app should start inside a container without an error.
Dockerfile should contain the build stage and run stage.
Add ARG as Python base image version in Dockerfile.
Execute database migration as RUN instruction.
Add the ENV PYTHONUNBUFFERED=1 variable to optimize the Python app for Docker (writing logs directly to stdout and stderr without buffering in the app process memory.
runserver should be followed by the 0.0.0.0:8080 parameter to start the Django server properly.
Build an image and name it todoapp.
The image should be pushed to your personal Docker Hub account into the todoapp repository with the 1.0.0 tag (todoapp:1.0.0).
Create the INSTRUCTION.md file
INSTRUCTION.md should contain a link to your personal Docker Hub repository win an app image.
INSTRUCTION.md should contain all the instructions for building and running the container.
INSTRUCTION.md should contain instructions on accessing the application via a browser.
Create PR with your changes and attach it for validation on a platform.