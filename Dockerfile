FROM python:3.9

# Installer les dépendances
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Copier le code dans le container
COPY . /app

WORKDIR /app

CMD ["python", "FootGenius.py"]
