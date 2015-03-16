all:
	./bootstrap.sh

check: 
	docker run -v `pwd`:/my-bootstrap --privileged -i -t ubuntu /my-bootstrap/hack/test.sh
