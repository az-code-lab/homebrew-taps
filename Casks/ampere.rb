cask "ampere" do
  version "0.0.29"
  sha256 "f99e0187e3ca3e0a67dc75edfb49b44791ac82564cf885a23d0360d0145c6468"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
