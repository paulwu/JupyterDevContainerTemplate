# Use the official Jupyter Data Science Notebook as base
FROM jupyter/datascience-notebook:latest

# Switch to root user to install system packages
USER root

# Install additional system packages if needed
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Add jovyan to sudoers for WSL compatibility
RUN echo "jovyan ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Create work directory and set proper permissions
RUN mkdir -p /home/jovyan/work && \
    chown -R jovyan:users /home/jovyan/work && \
    chmod -R 755 /home/jovyan/work

# Switch back to jovyan user
USER jovyan

# Set working directory
WORKDIR /home/jovyan/work

# Copy requirements file
COPY requirements.txt .

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables
ENV JUPYTER_ENABLE_LAB=yes
ENV JUPYTER_PORT=8888

# Expose Jupyter ports
EXPOSE 8888 8889 8890

# Start Jupyter Lab by default
CMD ["start.sh", "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]