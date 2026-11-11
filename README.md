# Homebrew tap for Reckon

[Reckon](https://github.com/appliedsyntax/reckon) is a natural-language
calculator: write math in plain words and see results next to each line.

## Install

The Mac app:

```bash
brew install --cask appliedsyntax/tap/reckon
```

The command-line tool (macOS and Linux, built from source):

```bash
brew install appliedsyntax/tap/reckon-cli
```

Or add the tap once and use the short names:

```bash
brew tap appliedsyntax/tap
brew install --cask reckon
brew install reckon-cli
```

## First launch of the Mac app

The app is not yet signed with an Apple Developer ID, so macOS blocks it the
first time. Right-click Reckon in Applications and choose Open, then confirm.
You only need to do this once.

## Upgrade and remove

```bash
brew upgrade
brew uninstall --cask reckon
brew uninstall reckon-cli
```

Your sheets live in `~/Library/Application Support/Reckon` (or the folder you
chose) and are not touched by uninstalling.
