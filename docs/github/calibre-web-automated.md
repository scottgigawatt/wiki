---
title: Calibre Web Automated
description: A genteel Docker Compose solution for the modern bibliophile.
icon: material/book-open-variant
---

# 📚 Calibre Web Automated

> "It is a truth universally acknowledged, that a reader in possession of a large eBook collection, must be in want of a proper library."

Dear gentleperson,

Pray allow me to introduce **Calibre Web Automated**—a most elegant arrangement of software, bestowed upon the modern bibliophile to render their electronic tomes in perfect order and splendour. Where once there was chaos—files named "FinalFinal2.epub" strewn across devices—now arises a sanctuary of civility, wherein metadata shines and series are aligned as surely as carriages at a country ball.

## 🫖 An Arrangement Most Fortunate

Whether your tastes incline toward swashbuckling fantasy, scandalous regency romances, or the occasional disreputable vampire memoir, this arrangement offers the promise of:

- Impeccably catalogued volumes—each more handsomely adorned than the last.
- A refined user interface, suitable for both the drawing room and the dark parlour.
- Automated processes so genteel, one scarcely need lift a gloved finger.

Indeed, should Lady Catherine de Bourgh herself desire access to the archives, one might confidently offer her a tablet and say, "Browse at your leisure, madam."

## 🪑 Esteemed by Those of Taste (and Fortunate Furniture)

From the salons of macOS to the vast estates of Synology NAS, **Calibre Web Automated** has earned distinction amongst those of excellent reading habits and impeccable taste. It has been whispered (though never confirmed) that even Mr. Darcy himself employs it to manage his extensive collection of gothic poetry and botanical monographs.

## 👀 A Peek Between the Covers (Scandalous!)

If, dear reader, you find your heart stirred and your curiosity piqued, you are most cordially invited to promenade through the [Calibre Web Automated Repository](https://github.com/scottgigawatt/calibre-web-automated), where further marvels await.

May your libraries be vast and your metadata ever correct.

Yours in bibliophilic affection,
**Calibre Web Automated**

## 🐄 A Lady's Guide to Taming the Kubota

It is a truth universally acknowledged, that a Kubota (that is, a Kobo eReader of agricultural temperament) must be brought into civilised society through modest technical persuasion. While the native firmware frowns upon OPDS catalogs, one may outfit the Kubota with **KoReader**, a refined companion app that unlocks your Calibre Web Automated library with all due grace. 🐄📖

### 🧵 Tailoring the KoReader Gown

1. Obtain the appropriate files from the [KoReader installer guide](https://www.mobileread.com/forums/showthread.php?t=314220) or the [Mobileread forum thread](https://www.mobileread.com/forums/showthread.php?t=314220).
2. Connect your Kubota to your computing device via USB—gently, lest it take offense.
3. Place the KoReader `.zip` and `install.sh` in the root of the Kubota drive.
4. Run the script:

   ```bash
   ./install.sh
   ```

5. Your Kubota shall restart—transformed, but still ever so proper.

### 📎 A Catalogue Worthy of Netherfield

1. Open the KoReader app (you'll find it hiding among your Kubota's newly acquired talents).
2. In the File Browser, locate **OPDS Catalog** and choose **Add New Catalog**.
3. For the catalog details, use:
   - **Name:** "CWA Library" or another genteel title of your choosing.
   - **URL:** your server’s OPDS address (e.g., `http://192.168.1.42:8213/opds`)
4. Provide credentials if your library requires such formality.
5. You may now browse and download titles as if your Kubota were raised at Pemberley.

Should your Kubota sulk (as is its wont), refresh the catalog, verify the Wi-Fi, or glare meaningfully at it. That generally suffices.

Let it be known: while the Kubota remains proud, it is no longer prejudiced against your library.

## 🍎 An Apple of Distinction in the Drawing Room

It would be most unjust to forget our dear cousins in the House of iOS—those refined gentlefolk who possess not a Kubota, but rather a gilded device bearing fruit. To them we say: fret not, for there exists a most worthy companion app known as **Yomu**.

### 🫖 To the App Store, Posthaste

With elegance befitting a drawing room in Bath, the **Yomu** app allows one to connect directly to Calibre Web Automated and peruse their collection with grace and minimal affront.

To begin your journey:

1. Install [**Yomu from the App Store**](https://apps.apple.com/us/app/yomu-ebook-reader/id562211012).
2. Within the app, choose to add a new library, and select **OPDS Catalog**.
3. Enter the parlour address of your CWA deployment (e.g., `http://192.168.1.42:8213/opds`), along with your credentials.
4. Voilà! Your volumes shall appear, and you may download them to your iDevice for solitary reading under a tree, on a train, or in the scandalous privacy of your own bedchamber.

Should you wish to match your Kubota-owning peers in bravado, you may even declare: "I prefer Yomu—it does not sulk when the Wi-Fi trembles."

Carry on, dear reader. The library welcomes all.
