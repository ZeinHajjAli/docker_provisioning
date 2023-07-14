param (
	[string]$ImageName = "docker_prov"
)

docker build -t $ImageName --progress plain -f Dockerfile .

docker image prune -f
