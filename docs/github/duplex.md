---
title: Duplex
description: Utility stack for managing Plex Media Server with automation and monitoring tools.
icon: material/server-network
---

# 🧰 Duplex

Welcome to Duplex—your behind-the-scenes crew for running Plex like a well-oiled heist. Think *Ocean's Eleven*, but instead of robbing casinos, we're cleaning metadata, sending updates, and keeping your containers from going stale. Slick, efficient, and fully automated. 🎥

## About this project

**Duplex** is a utility stack for managing and enhancing **Plex Media Server** deployments on **Docker**, especially on Synology NAS systems. It brings together a curated set of containers to streamline metadata management, monitoring, automation, and maintenance tasks.

You can view or contribute to this project on [GitHub](https://github.com/scottgigawatt/duplex).

## Services Included

- **Kometa**: Manage and automate Plex metadata collections
- **ImageMaid**: Clean up and organize Plex image caches
- **PATTRMM**: Build 'Returning Soon' and historical collections in Plex
- **Tautulli**: Monitor Plex usage and activity with rich analytics
- **Notifiarr**: Get real-time app notifications and system insights
- **Watchtower**: Automate updates for Docker containers

## Architecture Highlights

- Centralized environment configuration with YAML anchors
- Persistent volume mappings for each service
- Network customization with IPAM
- Container log rotation and auto-restart policies

## Technologies Used

- Docker & Docker Compose
- Plex Media Server
- Kometa, ImageMaid, PATTRMM
- Tautulli, Notifiarr, Watchtower
