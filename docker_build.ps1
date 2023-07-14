param (
	[string]$ImageName = "docker_prov"
)

docker build -t $ImageName -f Dockerfile .

docker image prune -f
