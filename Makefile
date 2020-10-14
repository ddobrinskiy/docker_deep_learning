build:
	docker build -t david_ml .


run_gpu: build
	docker run --name david_ml \
			--gpus all \
	       	--rm -it -p 8888:8888 -p 8787:8787 -p 8786:8786 \
			-e JUPYTER_FG="true" \
		david_ml


run: build
	docker run --name david_ml \
	       	--rm -it -p 8888:8888 -p 8787:8787 -p 8786:8786 \
			-e JUPYTER_FG="true" \
		david_ml

stop:
	docker rm -f david_ml

