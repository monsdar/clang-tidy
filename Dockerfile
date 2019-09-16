FROM conanio/clang8

RUN sudo apt-get -qq update \
    && sudo apt-get install -y --no-install-recommends \
    clang-tidy-8 \
    clang-format-8

VOLUME [/source]

COPY build.sh /build/
ENTRYPOINT ["/build/build.sh"]
