# SpotConnect Home Assistant Addon

Exposes AirPlay devices (HomePods, etc.) as Spotify Connect speakers.

## Installation

1. In HA, go to **Settings → Add-ons → Add-on Store → ⋮ → Repositories**
2. Add this repository URL
3. Find **SpotConnect** and install it
4. Configure mode (`raop` for AirPlay/HomePods) and start

## Configuration

| Option | Default | Description |
|--------|---------|-------------|
| `mode` | `raop` | `raop` for AirPlay (HomePods), `upnp` for UPnP/Sonos |
| `puid` | `1000` | User ID |
| `pgid` | `1000` | Group ID |
| `vorbis_bitrate` | `320` | Audio quality: 96, 160, or 320 kbps |
| `store_cred_xml` | `false` | Persist Spotify credentials |
| `log_level_raop` | `info` | Log verbosity |

## Requirements

- HomePods and HAOS host on the same LAN
- mDNS not blocked (check router multicast settings)

## Credits

- [SpotConnect](https://github.com/philippe44/SpotConnect) by philippe44
- [spotconnect-docker](https://github.com/GioF71/spotconnect-docker) by GioF71
