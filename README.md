# Appgineering Homebrew Tap

Casks for [Appgineering](https://appgineering.com/?utm_source=ampel&utm_medium=tap&utm_campaign=github) software.

```sh
brew trust appgineering/tap
brew tap appgineering/tap
brew install --cask ampel
```

Homebrew 6 refuses to load casks from a tap you have not explicitly trusted, so
`brew trust` comes first. Without it, `brew tap` fails with a misleading
"invalid syntax in tap" error.

## Casks

- **[ampel](https://github.com/appgineering/Ampel)** — a menu bar traffic light for Claude Code sessions. Signed with a Developer ID certificate and notarized by Apple.
