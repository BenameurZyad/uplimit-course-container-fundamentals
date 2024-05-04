build_image:
	cd edge_server && \
	./build.sh && \
	docker images

build_container:
	cd edge_server && \
	./deploy.sh

run_container:
	docker start edge_server

stop_container:
	docker stop edge_server

delete_all:
	docker rm edge_server
	docker rmi edge_server:v1