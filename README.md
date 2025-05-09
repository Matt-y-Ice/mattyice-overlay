# MattyIce Gentoo Overlay

This is a custom Gentoo overlay with curated binary packages.

## Packages

- `app-editors/sublimetext-bin`: Precompiled Sublime Text editor

## How to Add the Overlay

```bash
sudo eselect repository add mattyice-overlay git https://github.com/Matt-y-Ice/mattyice-overlay.git
sudo emaint sync -r mattyice-overlay
```
## How to Install Sublime Text

```bash
emerge --ask app-editors/sublimetext-bin
```
