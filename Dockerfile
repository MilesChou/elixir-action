FROM elixir:alpine

LABEL repository="https://github.com/MilesChou/actions-elixir" \
   maintainer="MilesChou <jangconan@gmail.com>"

RUN set -xe && \
    mix local.rebar --force && \
    mix local.hex --force

COPY elixir-entrypoint /usr/local/bin/elixir-entrypoint

ENTRYPOINT ["/usr/local/bin/elixir-entrypoint"]
