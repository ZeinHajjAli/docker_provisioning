# Using tensorflow image with GPU support since it's automatically updated
FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt-get update

# Install system dependencies
RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	build-essential

# RUN apt-get update && \
# 	apt-get install -y --no-install-recommends \
# 	python3 \
# 	python3-pip \
# 	&& \
# 	apt-get clean && \
# 	rm -rf /var/lib/apt/lists/*

# Install required Python packages
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Install Java if needed
# RUN apt-get update && apt-get install -y openjdk-11-jre
# ENV JAVA_HOME=/opt/java/openjdk PATH="/opt/java/openjdk/bin:$PATH"

# Create directory for the app
WORKDIR /app

# Expose port 8888 for Jupyter Notebook
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--allow-root", "--NotebookApp.token='CHANGEME'", "--notebook-dir='/app'"]
