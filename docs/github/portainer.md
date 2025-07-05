---
title: Portainer
description: Harbor control for Docker on Synology—charts included, sockets optional.
icon: material/ferry
---

# 🚢 Portainer for Synology

Welcome to **Portainer Harbor Control**, where Synology-bound containers get the spa day they deserve and every deployment feels like shore leave. With this clean setup, you'll be running containers so smooth they practically dock themselves. ⚓

## ⚙️ What's in the Cargo?

This repo delivers a streamlined Docker Compose config to deploy **[Portainer](https://www.portainer.io/)** on your Synology NAS. It gives you a slick web UI to manage Docker containers with ease—even if you've had one too many rum & rootkits.

You can board the repo here: [GitHub](https://github.com/scottgigawatt/portainer)

## 🧭 Quickstart Orders

1. SSH into your Synology NAS.
2. Clone this repo.
3. Copy `example.env` to `.env` and adjust the settings to your harbor.
4. Launch the vessel:

   ```bash
   docker-compose up -d
   ```

5. Navigate to `https://<your-nas-ip>:9443` to manage your fleet.

## 🪝 Reverse Proxy Ropes

Enable WebSocket in DSM 7's reverse proxy to prevent terminal “Socket closed” errors.
See [this Marius Hosting guide](https://mariushosting.com/synology-how-to-use-reverse-proxy-on-dsm-7/) for instructions.

## 🛳️ Tested Waters

- Synology DS1522+ & DS916+
- DSM 7.2.2
- Docker Compose v2.9

## 📜 Charter License

This project is licensed under Apache 2.0. Contribute, adapt, and share as you chart your own course.
