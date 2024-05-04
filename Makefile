build_server:
	cd edge_server && \
	./build.sh && \
	docker images

run_server:
	docker start edge_server

stop_server:
	docker stop edge_server

delete_all:
	docker rm edge_server
	docker rmi edge_server:v1