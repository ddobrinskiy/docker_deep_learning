#!/bin/bash

# Run Jupyter in foreground

echo "Notebook server successfully started, a JupyterLab instance has been executed!"
echo "Make local folders visible by volume mounting to /rapids/notebook"
echo 'Ensure the following arguments to "docker run" are added to expose the server ports to your host machine:
   -p 8888:8888 -p 8787:8787 -p 8786:8786'
jupyter-lab --allow-root --ip=0.0.0.0 --no-browser
