
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

### Notebook server:

If you want to work with the notebooks, start the notebook server via

    root@...# jupyter notebook --notebook-dir=/notebooks \
              --ip='*' --port=8889 --no-browser

Then open browser to:

    http://localhost:8889/tree


You can exit a container (after using `ctrl-C` to quit the jupyter server if
one is running) via::

    root...# exit

### Restarting a container

You can restart the container via::

    docker start -a -i clawpack-v5.4.0_container


### More resources:

 - [Introduction to Docker](https://geohackweek.github.io/Introductory/01-docker-tutorial/) from 
   the recent [GeoHack Week](https://geohackweek.github.io) at UW.
