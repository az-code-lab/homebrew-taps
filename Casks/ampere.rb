cask "ampere" do
  version "0.0.26"
  sha256 "a54e3e65ccb1800c5d79da3f606dbeba4bf5acc154b7e8b0b7f872ceab394614"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
