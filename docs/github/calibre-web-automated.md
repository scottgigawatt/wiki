---
title: Calibre Web Automated
description: A genteel Docker Compose solution for the modern bibliophile.
icon: material/book-open-variant
---

# 📚 Calibre Web Automated

> “To read without order is to dine without table or chair.” – *Whitt & Folio*

Welcome, dear reader, to a most distinguished Docker Compose configuration—one designed to bring civility and grace to your unruly eBook collection. Whether your digital shelves groan under the weight of Gothic thrillers or slightly scandalous fanfiction, **Calibre Web Automated** ensures every volume finds its proper place.

## ✨ About This Repository

This project deploys **Calibre Web Automated** using Docker Compose on Synology NAS or similar Docker-friendly estates. It integrates ingestion, curation, and serving of eBooks, all wrapped in automation and adorned with elegance.

Peruse the source here: [GitHub](https://github.com/scottgigawatt/calibre-web-automated)

Special thanks to [Marius Hosting](https://mariushosting.com/how-to-install-calibre-web-automated-on-your-synology-nas) for their original setup guide—a lantern in the stacks.

## 🪞 What's Included

| Apparatus                    | Description                                                                 | Reference |
|------------------------------|-----------------------------------------------------------------------------|-----------|
| **Calibre Web Automated** 📘 | A Docker-based deployment for ingesting and displaying your library online. | [GitHub](https://github.com/crocodilestick/calibre-web-automated) |

## 🚀 Installation

```bash
git clone https://github.com/scottgigawatt/calibre-web-automated.git /volume1/docker/calibre-web-automated
cp example.env .env
vim .env
docker compose up -d
```

Manual overrides are permitted for those inclined to live dangerously:

```bash
CWA_TAG="latest" docker compose up -d
```

## 👒 Guidance and Rituals

Consult the sacred [Setup Guide](./SETUP.md) before embarking. Topics include:

- Docker networking and volume management
- Synology firewall and container setup
- Rituals for deploying with Container Manager

To skip it is to tempt literary chaos.

## 🪡 Confirmed Reading Rooms

Tested on:

- Synology DS1522+ and DS916+
- DSM 7.2
- macOS + Docker Desktop

If your estate supports Docker, this library shall thrive.

## 📖 License of Gentlefolk

Licensed under Apache 2.0. Forks, pull requests, and literary annotations most welcome.
