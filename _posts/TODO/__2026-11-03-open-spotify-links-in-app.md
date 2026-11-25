---
Title: How to open spotify links into the desktop app
Date: 2026-11-03
Author: Rogelio Prieto Alvarado
---

## Problem:

I need to manage the url like this:
https://open.spotify.com/playlist/37i9dQZF1DX9sIqqvKsjG8

I want open it in spotify desktop app by default. I'm using Spotify apt version on Ubuntu 24.04.

## Solution:
Force standard `https://open.spotify.com/` web URLs to automatically redirect and open inside your APT-installed Spotify desktop app

## Steps:

1. Quick Command Line Verification


    Open a Terminal app and execute this:
    ```bash
    xdg-open "spotify:playlist:37i9dQZF1DX9sIqqvKsjG8"
    ```

    **Note:** this "spotify:" URL is for testing, you can verify with any other link to song, album, artist or playlist.
    To copy a native **Spotify URI** (`spotify:...`) from inside the [Spotify desktop app](https://www.spotify.com/us/download/windows/), follow these quick steps: 

    1.  **Locate the item** you want to link to (a song, album, artist, or playlist).
    2.  Click the **three dots icon** (`...`) next to the item, or simply **right-click** its title.
    3.  Hover your mouse over the **Share** menu.
    4.  **Press and hold the `Alt` key** on your keyboard.
    5.  While holding `Alt`, you will see **"Copy Link to..."** instantly change into **"Copy Spotify URI"**.
    6.  Click **Copy Spotify URI** while keeping the key held down. 

    The URI is now copied to your clipboard (looking something like `spotify:track:4cOdK2w...`) and can be used to test your Ubuntu MATE terminal command.


2. Install the extension or addon:

   - In Firefox:\
   <https://addons.mozilla.org/en-US/firefox/addon/open-in-spotify-desktop/>

   - In Chromium/Chrome:\
   <https://chromewebstore.google.com/detail/ccilmbdijoknlfpepncnebjkiclplhig?utm_source=item-share-cb>
