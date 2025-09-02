# 🛠️ Stage 1: Builder
FROM python:3.10-slim AS builder
COPY requirements.txt .
WORKDIR /app
COPY .
RUN pip install --user -r requirements.txt

# 🧼 Stage 2: Final image
FROM python:3.10-slim
WORKDIR /app
COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH
COPY . .
CMD ["bash", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
