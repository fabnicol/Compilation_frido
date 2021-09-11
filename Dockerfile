FROM debian:bullseye-slim
RUN apt-get update -yq \
 && apt-get install \
        --yes \
        --no-install-recommends \
        ca-certificates \
        git \
        lmodern \
        python3 \
        python3-pip \
        python3-pygit2 \
        texlive \
        texlive-fonts-extra \
        texlive-lang-french \
        texlive-latex-extra \
        texlive-plain-generic \
        texlive-science \
 && python3 -m pip install \
        pdfrw==0.4

RUN git clone https://github.com/LaurentClaessens/mazhe \
 && git clone https://github.com/Gjacquenot/pytex

RUN cd mazhe \
 && sed -i 's/pytex\.src/pytex/g' lst_frido.py \
 && PYTHONPATH=$pwd/../pytex python3 -m pytex lst_frido.py \
 && ls -altr
