# Homebrew Tap for TunGo

Homebrew formulae for installing TunGo VPN.

## Installation

```bash
brew tap NLipatov/tungo
brew install tungo
```

Or in a single command:

```bash
brew install NLipatov/tungo/tungo
```

## Usage

TunGo requires administrator privileges:

```bash
sudo tungo
```

## Updating

```bash
brew update
brew upgrade tungo
```

## Uninstallation

```bash
brew uninstall tungo
brew untap NLipatov/tungo
```

## How it works

This tap distributes pre-built macOS binaries (arm64 and amd64). The formula is automatically updated on each release via GitHub Actions.
