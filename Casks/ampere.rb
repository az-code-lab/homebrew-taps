cask "ampere" do
  version "0.0.28"
  sha256 "0ff36a39e55f753a5104068f0af2f5879f03022dfd0308ebd186925a21f4f9b1"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
