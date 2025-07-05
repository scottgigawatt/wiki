---
title: Privateerr
description: A dockerized VPN buccaneer, wired for stealth and plunder on the digital seas.
icon: material/anchor
---

# ⚓️ Privateerr ☠️

Avast ye! Welcome aboard **Privateerr**, where Docker meets WireGuard in a glorious tangle of shell scripts, submodules, and seafaring VPN swagger.

## 🏴‍☠️ What's This Then?

Privateerr be a devilishly clever containerized setup that builds and runs **Private Internet Access (PIA)** with WireGuard in tow. With it, ye generate a secure VPN config from scratch using only Docker, a `.env` file, and the salty determination of a seasoned deckhand.

At its heart lies a make-powered build system, a submodule of PIA's [manual-connections](https://github.com/pia-foss/manual-connections), and enough flags to sink a firewall.

Ye can inspect the full code o' conduct at [GitHub](https://github.com/scottgigawatt/privateerr).

## 🔧 Capabilities Fit for a Captain

- ⚙️ Custom Docker image for WireGuard & PIA
- 🗺️ Auto-generates a `wg0.conf` config file
- 🧪 Tested on Synology and macOS waters
- 🐚 Powered by Makefile targets for simple sailing
- 🛠️ Modular with `.env` for personalized swashbuckling
- ☁️ Ready for Gluetun and similar VPN containers

## 🦜 Commands for Scallywags

Use the `Makefile` to:

- `make build` – Build yer VPN image
- `make pia-creds` – Provide yer secrets
- `make up` – Set sail
- `make logs` – Read the ship's log
- `make help` – When the fog gets thick

## ⚠️ Mind the Kraken

Privateerr works best on Synology NAS and modern macOS shores, but other seas may hold strange beasts. Backup yer `.env`, protect yer `wg0.conf`, and never let your secrets fall into the hands of rival crews.

---

☠️ *Adventure Awaits, Treasure Beckons. Fork if ye dare.* 🏴‍☠️
