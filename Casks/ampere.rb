cask "ampere" do
  version "0.0.20"
  sha256 "0a2325a2ed1a782d31dc33d357bb7812d3375544607f02e6e658d35e87ac6f15"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
