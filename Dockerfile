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
