param (
	[string]$ImageName = "docker_prov:latest",
	[string]$ContainerName = "docker_prov"
)

$containerExists = docker ps -a --format "{{.Names}}" | Where-Object { $_ -eq $ContainerName }

if ($containerExists) {
	docker stop $ContainerName | Out-Null
	Write-Host "Successfully stopped the container $ContainerName"

	docker rm $ContainerName | Out-Null
	Write-Host "Successfully removed the container $ContainerName"
} else {
	Write-Host "No container named $ContainerName was found"
}

docker run -d --gpus all -p 8666:8888 -v ${pwd}:/app --name $ContainerName $ImageName
