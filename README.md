# SpotConnect Home Assistant Addon

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-support-ffdd00?logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/vin_w)

Make HomePod a Spotify Connect Device on Spotify. Just install — it should work! There is no dependency on OwnTone.

## Installation

[![Add Repository](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fvin-w%2Fhass-spotconnect-addons)

Or manually:

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

## Support

If you find this useful, you can buy me a coffee:

[![Buy Me A Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/vin_w)
