FROM debian:bullseye-slim
RUN apt-get update -yq && \
    apt-get install \
        --yes \
        --no-install-recommends \
        git \
        python3 \
        texlive

RUN git clone https://github.com/LaurentClaessens/mazhe \
 && git clone https://github.com/LaurentClaessens/pytex