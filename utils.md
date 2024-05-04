# Exports the image into .tar
docker save edge_server > edge_server.tar

# Extracts the contains of .tar
tar -xf edge_server.tar 

# History of building the image with size :
docker history edge_server:v1