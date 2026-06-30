# SpotConnect Home Assistant Addon

Make HomePod a Spotify Connect Device on Spotify. Just install — it should work! There is no dependency on OwnTone.

## Installation

1. In HA, go to **Settings → Add-ons → Add-on Store → ⋮ → Repositories**
2. Add `https://github.com/vin-w/hass-spotconnect-addons`
3. Find **SpotConnect** and install it
4. Set mode to `raop` for HomePods, then start

That's it. HomePods will appear as Spotify Connect devices in your Spotify app.

## Configuration

| Option | Default | Description |
|--------|---------|-------------|
| `mode` | `raop` | `raop` for AirPlay (HomePods), `upnp` for UPnP/Sonos |
| `puid` | `1000` | User ID |
| `pgid` | `1000` | Group ID |
| `vorbis_bitrate` | `320` | Audio quality: 96, 160, or 320 kbps |
| `store_cred_xml` | `false` | Persist Spotify credentials for faster reconnect |
| `log_level_raop` | `info` | Log verbosity: error, warn, info, debug, sdebug |

## Requirements

- HomePods and HAOS host on the same LAN
- mDNS not blocked (check router multicast settings)

## Credits

- [SpotConnect](https://github.com/philippe44/SpotConnect) by philippe44
- [spotconnect-docker](https://github.com/GioF71/spotconnect-docker) by GioF71
