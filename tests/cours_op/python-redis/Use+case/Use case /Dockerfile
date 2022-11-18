FROM python:3.8-alpine3.14

# Copy just the requirements.txt first to leverage Docker cache
# Install all dependencies for python app
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

# Install dependencies in requirements.txt
RUN pip install -r requirements.txt

# Copy all content to work directory /app
COPY . /app

# specify the port number the container should expose
EXPOSE 5000

# Run the application
CMD ["python", "/app/main.py"]
