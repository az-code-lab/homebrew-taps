cask "ampere" do
  version "0.0.21"
  sha256 "6236aac88178a813ac0811e2c4cd8a7225b78d06f3adc9aa68ff213c50951542"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
