cask "reckon" do
  version "0.1.0"
  sha256 "cfcda39da1ff8e0f165a1bb92f3930e91268a715fc5b7572891cbbcaf8fd90c1"

  url "https://github.com/appliedsyntax/reckon/releases/download/v#{version}/Reckon-#{version}-macos-universal.dmg"
  name "Reckon"
  desc "Natural-language calculator"
  homepage "https://github.com/appliedsyntax/reckon"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Reckon.app"

  # No zap stanza on purpose: ~/Library/Application Support/Reckon holds the
  # user's sheets, which uninstalling must never delete.

  caveats <<~EOS
    Reckon is not yet signed with an Apple Developer ID, so macOS blocks the
    first launch. Open Reckon once and dismiss the warning, then go to
    System Settings > Privacy & Security, scroll to Security and click
    "Open Anyway". On macOS 14 and earlier, right-click the app and choose
    Open instead.

    For the command-line tool:
      brew install appliedsyntax/tap/reckon-cli
  EOS
end
