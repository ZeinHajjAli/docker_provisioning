# Docker Provisioning

This repo is a template for provisioning a docker container with Nvidia GPU support. It includes CUDA, TensorFlow, and PyTorch. It also installs Matplotlib, Pandas, Numpy, and SciKit-Learn.

It's based on the [TensorFlow Docker image](https://hub.docker.com/r/tensorflow/tensorflow/) since the image is already configured with CUDA and cuDNN.

## Requirements

- [Nvidia Drivers](https://www.nvidia.com/Download/index.aspx) for your system
- [Docker](https://docs.docker.com/install/)
- If running on a Windows host, the easiest method is by using the [WSL backend for Docker](https://docs.docker.com/desktop/wsl/).
- If running on a Linux host, you also need the [Nvidia Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#install-guide).

## Usage

1. Clone this repo
2. Build the image:
    ```bash
    docker build -t jupyter-custom:latest .
    ```
	
3. Bring up the container with docker compose:
    ```bash
    docker compose up --build -d
    ```

