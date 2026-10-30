# Homebrew tap for Inkvolt

[Inkvolt PDF](https://bermudezsystems.com/products/inkvolt/) for the Mac: a free, open-source (AGPL-3.0) PDF reader and
editor with no account, no ads and no telemetry. Macs with Apple silicon, macOS 15 or later.

```sh
brew install --cask gabandres/inkvolt/inkvolt-pdf
```

The cask installs the notarized DMG from the [GitHub release](https://github.com/gabandres/inkvolt/releases) and the app
updates itself afterwards (Sparkle), so `brew upgrade` is not needed; `brew uninstall --zap inkvolt-pdf` removes the app
and its settings.

Source and issues: [github.com/gabandres/inkvolt](https://github.com/gabandres/inkvolt).
