docker run -i -t -v $PWD:/home/appuser/data -p 8888:8888 app_img /bin/bash -c "/opt/conda/bin/jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser"

