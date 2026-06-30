#!/usr/bin/env bash
# Read HAOS addon options from /data/options.json and map to SpotConnect env vars

CONFIG="/data/options.json"

if [ -f "$CONFIG" ]; then
  export SPOTCONNECT_MODE="$(jq -r '.mode // "raop"' "$CONFIG")"
  export PUID="$(jq -r '.puid // 1000' "$CONFIG")"
  export PGID="$(jq -r '.pgid // 1000' "$CONFIG")"
  export VORBIS_BITRATE="$(jq -r '.vorbis_bitrate // 320' "$CONFIG")"
  STORE_CRED="$(jq -r '.store_cred_xml // false' "$CONFIG")"
  if [ "$STORE_CRED" = "true" ]; then
    export STORE_CRED_XML="yes"
  else
    export STORE_CRED_XML="no"
  fi
  export LOG_LEVEL_RAOP="$(jq -r '.log_level_raop // "info"' "$CONFIG")"
fi

exec /app/bin/run.sh
