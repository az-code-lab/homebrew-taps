cask "ampere" do
  version "0.0.24"
  sha256 "df809d5d3408d7a331172506266377973a2040d2f469c4fd03683f4c53954c43"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
