cask "ampere" do
  version "0.0.27"
  sha256 "0c9586026b6b16353808216ba1e32e8c80a21856c62aea55595b6ccf9f30353d"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
