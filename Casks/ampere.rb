cask "ampere" do
  version "0.0.22"
  sha256 "815f95ef37cc47d897194275ca7994b3b61675f3572cfb5e27109e584a0714cd"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
