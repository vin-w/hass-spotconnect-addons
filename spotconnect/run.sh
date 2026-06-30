#!/usr/bin/env bash
# Read HAOS addon options from /data/options.json and map to SpotConnect env vars

CONFIG="/data/options.json"

if [ -f "$CONFIG" ]; then
  # Parse JSON without jq — extract values between quotes after key
  extract() { grep -o "\"$1\"[[:space:]]*:[[:space:]]*\"\\?[^\"]*\"\\?" "$CONFIG" | head -1 | sed 's/.*://; s/^[[:space:]]*//; s/^"//; s/"$//'; }

  export SPOTCONNECT_MODE="$(extract mode)"
  [ -z "$SPOTCONNECT_MODE" ] && SPOTCONNECT_MODE="raop"

  export PUID="$(extract puid)"
  [ -z "$PUID" ] && PUID="1000"

  export PGID="$(extract pgid)"
  [ -z "$PGID" ] && PGID="1000"

  export VORBIS_BITRATE="$(extract vorbis_bitrate)"
  [ -z "$VORBIS_BITRATE" ] && VORBIS_BITRATE="320"

  STORE_CRED="$(extract store_cred_xml)"
  if [ "$STORE_CRED" = "true" ]; then
    export STORE_CRED_XML="yes"
  else
    export STORE_CRED_XML="no"
  fi

  export LOG_LEVEL_RAOP="$(extract log_level_raop)"
  [ -z "$LOG_LEVEL_RAOP" ] && LOG_LEVEL_RAOP="info"
fi

exec /app/bin/run.sh
