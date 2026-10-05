cask "cheatmd" do
  version "1.0.0"
  sha256 "f846e4845887975f5ef97d3a4006cbc0481d207447cff2965253509920ad4a06"

  url "https://github.com/caius72/cheatmd/releases/download/v#{version}/cheatmd-#{version}.zip"
  name "cheatmd"
  desc "Always-fullscreen keyboard shortcut cheat sheet with fuzzy search"
  homepage "https://github.com/caius72/cheatmd"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "cheatmd.app"

  uninstall quit: "io.github.caius72.cheatmd"

  zap trash: "~/Library/Preferences/io.github.caius72.cheatmd.plist"

  caveats <<~EOS
    cheatmd shows ~/.config/cheatmd/cheatmd.md, created from a sample on first launch.
    Bind a global hotkey to `open -a cheatmd`, and press Ctrl-Cmd-Right to move it to another display.
  EOS
end
