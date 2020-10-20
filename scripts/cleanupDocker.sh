docker ps -aq --no-trunc -f status=exited | xargs docker rm
docker images -q --filter dangling=true | xargs docker rmi
