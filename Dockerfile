FROM python:3.12-slim

# Evite les .pyc et améliore les logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ARG APP_VERSION=dev
ENV APP_VERSION=$APP_VERSION

WORKDIR /app

# Installe les dépendances Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie le code
COPY . .

# Port (à adapter selon ton app)
EXPOSE 8000

# Commande par défaut (à adapter ci-dessous)
CMD ["python", "app.py"]
