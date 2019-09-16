FROM conanio/clang8

RUN sudo apt-get -qq update \
    && sudo apt-get install -y --no-install-recommends \
    clang-tidy-8 \
    clang-format-8
    
