# geoclaw_tutorial_tulane2017
Resources for a GeoClaw tutorial at Tulane University in April, 2017, as part of the
[Clifford Lectures Conference](http://www2.tulane.edu/sse/math/news/clifford-lectures-april-2017.cfm).

If you want to follow along during the tutorial, please try to get GeoClaw working in advance!

### Installing Clawpack/GeoClaw

See [the installation instructions](http://www.clawpack.org/installing.html).  Note that several 
[other software packages](http://www.clawpack.org/prereqs.html#prereqs) are also required.

### Using Docker

In this directory you will find a Dockerfile that makes it easy to install Clawpack 
and all the dependencies needed within a virtual machine, once you have 
[Docker](https://www.docker.com/) installed. 

This is an alternative to installing Clawpack and its dependencies on your laptop.

See the file `Dockerfile.md` for instructions.

See also 
[Docker for Clawpack](http://www.clawpack.org/docker_image.html#docker-image).

### GeoClaw examples

The `geoclaw_examples` directory contains several subdirectories where you can do some experiments with setting parameters, running the code, and viewing results.

### Notebooks

The `notebooks` directory contains some [Jupyter notebooks](http://jupyter.org/) that will be used to guide the tutorial.

Github renders notebooks, except that the animations will not be displayed. 
To see the notebooks with the animations intact, you can view them using 
[nbviewer](https://nbviewer.jupyter.org/) at the links below:

 - [chile2010a](https://nbviewer.jupyter.org/github/clawpack/geoclaw_tutorial_tulane2017/blob/master/notebooks/chile2010a/chile2010a.ipynb)
 - [chile2010b](https://nbviewer.jupyter.org/github/clawpack/geoclaw_tutorial_tulane2017/blob/master/notebooks/chile2010b/chile2010b.ipynb)
 - [katrina](https://nbviewer.jupyter.org/github/clawpack/geoclaw_tutorial_tulane2017/blob/master/notebooks/katrina/katrina.ipynb)
