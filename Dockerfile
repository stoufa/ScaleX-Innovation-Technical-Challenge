FROM python:3.10-slim

# Install system-level build tools & Graphviz libs
RUN apt-get update && apt-get install -y \
    build-essential gcc \
    graphviz libgraphviz-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy app files
COPY app/ app/

CMD ["python", "app/main.py"]
