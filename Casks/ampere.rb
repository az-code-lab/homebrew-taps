cask "ampere" do
  version "0.0.28"
  sha256 "d9e5a09490a708707a1d9ee7fff64808224269b33391383dd3c7a54c431fbca4"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
