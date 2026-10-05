# homebrew-cheatmd

Homebrew tap for [cheatmd](https://github.com/caius72/cheatmd), an always-fullscreen keyboard
shortcut cheat sheet with fuzzy search.

```sh
brew install --cask caius72/cheatmd/cheatmd
```

The cask installs the notarized `cheatmd.app` from the matching GitHub release into
`/Applications`. It needs macOS 26 or later on Apple Silicon. Your sheet,
`~/.config/cheatmd/cheatmd.md`, is never removed, not even by `brew uninstall --zap`.
