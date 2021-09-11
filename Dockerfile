FROM debian:bullseye-slim
RUN apt-get update -yq \
 && apt-get install \
        --yes \
        --no-install-recommends \
        ca-certificates \
        git \
        python3 \
        python3-pygit2 \
        texlive \
 && python3 -m pip install \
        pdfrw==0.4

RUN git clone https://github.com/LaurentClaessens/mazhe \
 && git clone https://github.com/Gjacquenot/pytex

RUN cd mazhe && sed -i 's/pytex\.src/pytex/g' lst_frido.py && cat lst_frido.py
RUN cd mazhe && PYTHONPATH=$pwd/../pytex python3 -m pytex lst_frido.py
