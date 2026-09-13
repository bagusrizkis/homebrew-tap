# Homebrew cask for Herdr Bar. Lives in the tap repo bagusrizkis/homebrew-tap as Casks/herdr-bar.rb.
# `version` and `sha256` are bumped by the release workflow.
cask "herdr-bar" do
  version "0.1.0"
  sha256 "100a04e44aa5cc8a3388119332f076d3efcad7f380a49cf94a0600b3a76d4d32"

  url "https://github.com/bagusrizkis/herdr-bar/releases/download/v#{version}/HerdrBar-#{version}.dmg"
  name "Herdr Bar"
  desc "Live status of Herdr coding agents in the menu bar"
  homepage "https://bagusrizkis.github.io/herdr-bar"

  depends_on macos: :tahoe

  app "Herdr Bar.app"

  uninstall quit: "me.bagus.herdrbar"

  zap trash: [
    "~/Library/Preferences/me.bagus.herdrbar.plist",
  ]
end
