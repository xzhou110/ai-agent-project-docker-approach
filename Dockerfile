FROM python:3.12-slim       # Start with a basic Python environment

WORKDIR /app                # Your project lives here inside container

COPY requirements.txt .     # Copy dependency list into container
RUN pip install --upgrade pip && pip install -r requirements.txt
                            # Installs Python libraries listed

COPY . .                    # Copy your project files into the container

ENTRYPOINT ["python", "src/scripts/run_agent.py"]
                            # Starts your agent when the container runs