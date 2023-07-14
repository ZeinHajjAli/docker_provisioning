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
	- Linux:
		```bash
			./docker_build.sh IMAGE_NAME
		```

	- Windows:
		```powershell
			./docker_build.ps1 -ImageName IMAGE_NAME
		```

	Where 'IMAGE_NAME' is the tag you want to give to the image.
	
3. Run the container:
	- Linux:
		```bash
			./docker_run.sh IMAGE_NAME CONTAINER_NAME
		```

	- Windows:
		```powershell
			./docker_build.ps1 -ImageName IMAGE_NAME -ContainerName CONTAINER_NAME
		```

	Where 'IMAGE_NAME' name of the built image and 'CONTAINER_NAME' is the name you want to give to the container.

4. To access an interactive terminal in the container:
	- Linux:
		```bash
			./docker_terminal.sh CONTAINER_NAME
		```

	- Windows:
		```powershell
			./docker_terminal.ps1 -ContainerName CONTAINER_NAME
		```

	Where 'CONTAINER_NAME' is the name of the container.
