DOCKER_IMAGE=compilation-frido
DOCKER_WORKING_DIRECTORY=/work

DOCKER_RUN:=\
	docker run --rm \
	-u $(shell id -u):$(shell id -g) \
	-v $(shell pwd):${DOCKER_WORKING_DIRECTORY} \
	-w ${DOCKER_WORKING_DIRECTORY} \
	${DOCKER_IMAGE} \
	/bin/bash -c

docker_build_pdf:
	docker build . -t ${DOCKER_IMAGE}
	${DOCKER_RUN} \
	"git clone https://github.com/LaurentClaessens/mazhe \
     && git clone https://github.com/Gjacquenot/pytex \
     && cd mazhe \
     && sed -i 's/pytex\.src/pytex/g' lst_frido.py \
     && PYTHONPATH=${DOCKER_WORKING_DIRECTORY}/pytex python3 -m pytex lst_frido.py \
     && ls -altr *.pdf \
     && sed -i 's/pytex\.src/pytex/g' lst_giulietta.py \
     && PYTHONPATH=${DOCKER_WORKING_DIRECTORY}/pytex python3 -m pytex lst_giulietta.py \
     && ls -altr *.pdf"