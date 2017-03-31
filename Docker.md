
# To use Docker

**Note:** In the instructions below, 
 - `$` refers to the native bash shell prompt on your computer, 
 - `root@...#` refers to the bash shell prompt within the Docker container, once you have that running.
 
First install [Docker](https://www.docker.com/).

Then download the Dockerfile from this directory, either directly from the Github webpage or by cloning this repository:

    $ git clone https://github.com/clawpack/geoclaw_tutorial_tulane2017
    
Then go into the directory containing the Dockerfile and build a Docker image:

    $ docker build -t geoclaw_tutorial_dockerimage -f Dockerfile .

Don't forget the last `.` on this line!

Then do:

    $ docker run -i -t -p 8889:8889 --name geoclaw_tutorial_container geoclaw_tutorial_dockerimage

This starts a virtual machine (*container*) named `geoclaw_tutorial_container` and gives a prompt like: 

    root@...# 

You can go into the `geoclaw_tutorial_tulane2017/geoclaw_examples/chile2010a` directory, for example, and run the
code from the command line, e.g. via

    root@...# make topo
    root@...# make .plots
    
See below for how to view the resulting plots.

### Notebook server:

If you want to work with the notebooks, start the notebook server via

    root@...# jupyter notebook --notebook-dir=/geoclaw_tutorial_tulane2017 --ip='*' --port=8889 --no-browser

Then open a browser (on your laptop) to the URL printed out when the Jupyter server starts via the command above.  This might be of the form:

  http://localhost:8889/tree
  
or perhaps will include a token, something like:

  http://localhost:8889/?token=9542fb1ed940f873f28e6a371c6334c5b1a0d8656121905c
  
This should open a web page with the list of directories.  Navigate to `notebooks/Index.ipynb` to get started.

Use `ctrl-C` to exit the Jupyter notebook server.

See http://jupyter.org/ for more documentation on Jupyter.

### Connecting with a second bash shell

If you have the notebook server running and also want another window open with a bash shell (to run GeoClaw from the command line), in another shell on your laptop you can do:

    $ docker exec -it geoclaw_tutorial_container bash
    
### Exiting a shell / halting a container

Use `Ctrl-p Ctrl-q` to exit from a shell without halting the docker container.

You can exit the container (after using `ctrl-C` to quit the jupyter server if
one is running) via::

    root...# exit

### Restarting a container

You can restart the container via::

    $ docker start -a -i geoclaw_tutorial_container

The external port should still work for serving notebooks.

### Viewing plots

If you run GeoClaw from the command line and want to view the resulting plots (generated e.g. via `make .plots`),  you can point your browser to, e.g.:

    http://localhost:8889/files/geoclaw_examples/chile2010a/_plots/_PlotIndex.html
    
This assumes you have the Jupyter notebook server running (from a different shell).


### Removing a container

This gets rid of the container and any data that you might have created when running this container:

    $ docker rm geoclaw_tutorial_container
    
### Removing the image

You might want to do this if you need to rebuild an image with an updated Dockerfile or to incorporate a newer version of software:

    $ docker rmi geoclaw_tutorial_dockerimage
    
    
### More resources:

 - [Docker for Clawpack](http://www.clawpack.org/docker_image.html#docker-image).  The Dockerfile provided here includes everything in the Clawpack-5.4.0 image.
 
 - [Introduction to Docker](https://geohackweek.github.io/Introductory/01-docker-tutorial/) from 
   the recent [GeoHack Week](https://geohackweek.github.io) at UW.
