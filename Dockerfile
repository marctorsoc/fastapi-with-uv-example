FROM python:3.12-slim

# Install uv.
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Create a folder called app-folder for our app within the container
WORKDIR /app-folder

# Copy the application into the container, into /app-folder
COPY . .

# Install the application dependencies
RUN uv sync --frozen --no-cache

# Run the application
CMD [".venv/bin/fastapi", "run", "app/main.py", "--port", "80", "--host", "0.0.0.0"]
