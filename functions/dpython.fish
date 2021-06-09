function dpython
    command docker run -it --rm --workdir /tmp --volume $PWD:/tmp python:3.6 /bin/sh
end
