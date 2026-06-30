#!/usr/bin/env bash
# Map HAOS addon options to SpotConnect environment variables

export SPOTCONNECT_MODE="${MODE:-raop}"
export PUID="${PUID:-1000}"
export PGID="${PGID:-1000}"
export VORBIS_BITRATE="${VORBIS_BITRATE:-320}"
export STORE_CRED_XML="${STORE_CRED_XML:-no}"
export LOG_LEVEL_RAOP="${LOG_LEVEL_RAOP:-info}"

# Run the original entrypoint
exec /entrypoint.sh
