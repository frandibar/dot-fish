function docker-rm-dangling-images
  docker images -f dangling=true -q | xargs docker rmi
end
