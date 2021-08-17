#!/bin/bash
# NB: Bind-Mounting on /home/jobyan overwrites jovyan user's config files ...
# this may hose some notebook configs in ways my trivial testing didn't uncover.
#     The alternative is to mount with -v "$(pwd)":/home/jovyan/work  so that the
# config files in ~jovyan are intact.  But this leaves open the ability to create
# notebooks and files in OTHER subdirectories of ~jovyan that will disappear forever
# when the notebook server stops.
docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "$(pwd)":/home/jovyan jupyter/scipy-notebook

