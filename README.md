# MattyIce Gentoo Overlay

This is a custom Gentoo overlay with curated binary packages.

## Packages

- `app-editors/sublimetext-bin`: Precompiled Sublime Text editor
- `dev-lang/arturo-mini-bin`: Precompiled Arturo programming language (w/o GTK)

## How to Add the Overlay

```bash
sudo eselect repository add mattyice-overlay git https://github.com/Matt-y-Ice/mattyice-overlay.git
sudo emaint sync -r mattyice-overlay
```
