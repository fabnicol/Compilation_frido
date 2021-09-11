FROM debian:bullseye-slim
RUN apt-get update -yq && \
    apt-get install \
        --yes \
        --no-install-recommends \
        ca-certificates \
        git \
        python3 \
        texlive

RUN git clone https://github.com/LaurentClaessens/mazhe \
 && git clone https://github.com/Gjacquenot/pytex

RUN cd mazhe && PYTHONPATH=$pwd/.. python3 -m pytex lst_frido.py
