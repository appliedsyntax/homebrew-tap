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

Using the full name adds this tap and, on Homebrew 6 and later, trusts just
that one package. To use the short names (`reckon`, `reckon-cli`) instead,
run `brew tap appliedsyntax/tap` and `brew trust appliedsyntax/tap` first.

## First launch of the Mac app

The app is not yet signed with an Apple Developer ID, so macOS blocks it the
first time:

1. Open Reckon. macOS shows a warning; dismiss it.
2. Go to System Settings › Privacy & Security, scroll down to Security and
   click **Open Anyway**.

On macOS 14 and earlier, right-click Reckon in Applications and choose Open
instead. You only need to do this once.

## Upgrade and remove

```bash
brew upgrade
brew uninstall --cask reckon
brew uninstall reckon-cli
```

Your sheets live in `~/Library/Application Support/Reckon` (or the folder you
chose) and are not touched by uninstalling.
