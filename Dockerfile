FROM conanio/clang7

RUN sudo apt-get -qq update \
    && sudo apt-get install -y --no-install-recommends \
    clang-tidy-7
