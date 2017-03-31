
# Install anaconda Python stack and some other useful tools
FROM continuumio/anaconda
RUN apt-get update
RUN apt-get install -y tar git curl wget dialog net-tools build-essential

# Install editors:
RUN apt-get install -y vim nano

# Install gfortran
RUN apt-get install -y gfortran

# Install clawpack-v5.4.0:
RUN pip install --src=/ --user -e git+https://github.com/clawpack/clawpack.git@v5.4.0#egg=clawpack-v5.4.0

# Set environment variables:
RUN echo 'export CLAW=/clawpack-v5.4.0' >> ~/.bashrc
RUN echo 'export FC=gfortran' >> ~/.bashrc

# Download the master branch of the apps repository and rename:
# (You can change `master` to a commit hash for a different version)
RUN curl -sL https://github.com/clawpack/apps/archive/master.tar.gz | tar xz
RUN mv apps-master /clawpack-v5.4.0/apps

RUN git clone https://github.com/clawpack/geoclaw_tutorial_tulane2017

