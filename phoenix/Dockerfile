FROM elixir:alpine

LABEL repository="https://github.com/MilesChou/actions-elixir"
LABEL homepage="https://github.com/MilesChou/actions-elixir"
LABEL maintainer="Miles Chou <jangconan@gmail.com>"

LABEL com.github.actions.name="Elixir Action"
LABEL com.github.actions.description="An action for running with Elixir environment"
LABEL com.github.actions.icon="terminal"
LABEL com.github.actions.color="orange"

RUN mix local.rebar --force
RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.4.3

COPY elixir-entrypoint /usr/local/bin/elixir-entrypoint

ENTRYPOINT ["/usr/local/bin/elixir-entrypoint"]
