#!/bin/sh
# This must be executable, argh
MIX_ENV=prod PORT=4000 elixir -pa _build/prod/consolidated -S mix phoenix.server

