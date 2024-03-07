FROM amutake/satysfi

RUN opam update && \
    opam install satysfi-base

RUN opam install satysfi-class-slydifi && \
    opam install satysfi-code-printer && \
    opam install satysfi-fonts-noto-sans && \
    opam install satysfi-fonts-noto-sans-cjk-jp

RUN eval $(opam env) && \
    satyrographos install

WORKDIR /work
