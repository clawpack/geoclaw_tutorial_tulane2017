
# To use Docker

First install [Docker](https://www.docker.com/).

Then, in this directory, do:

    docker build -t geoclaw_tutorial_dockerimage -f Dockerfile .

Don't forget the last `.` on this line!

Then do:

    docker run -i -t -p 8889:8889 --name geoclaw_tutorial_container \
           geoclaw_tutorial_dockerimage

This starts a virtual machine and gives a prompt like: 

    root@...# 

You can go into the `notebooks/chile2010a` directory, for example, and run the
code from the command line, e.g. via

    make all
    
See below for how to view the resulting plots.

### Notebook server:

If you want to work with the notebooks, start the notebook server via

    root@...# jupyter notebook --notebook-dir=/notebooks \
              --ip='*' --port=8889 --no-browser

Then open browser to:

    http://localhost:8889/tree

Use `ctrl-C` to exit the Jupyter notebook server.

### Connecting with a second bash shell

If you have the notebook server running and also want another window open with a bash shell (to run GeoClaw from the command line), in another shell on your laptop you can do:

    docker exec -it geoclaw_tutorial_container bash
    
### Exiting a shell / halting a container

Use `Ctrl-p Ctrl-q` to exit from a shell without halting the docker container.

You can exit the container (after using `ctrl-C` to quit the jupyter server if
one is running) via::

    root...# exit

### Restarting a container

You can restart the container via::

    docker start -a -i geoclaw_tutorial_container

The external port should still work for serving notebooks.

### Viewing plots

If you run GeoClaw from the command line and want to view the resulting plots (generated e.g. via `make .plots`),  you can point your browser to, e.g.:

    http://localhost:8890/files/chile2010a/_plots/_PlotIndex.html
    
This assumes you have the Jupyter notebook server running (from a different shell).

### More resources:

 - [Docker for Clawpack](http://www.clawpack.org/docker_image.html#docker-image).  The Dockerfile provided here includes everything in the Clawpack-5.4.0 image.
 
 - [Introduction to Docker](https://geohackweek.github.io/Introductory/01-docker-tutorial/) from 
   the recent [GeoHack Week](https://geohackweek.github.io) at UW.
