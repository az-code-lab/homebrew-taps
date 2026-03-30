cask "ampere" do
  version "0.0.25"
  sha256 "8534c77e902332c4f2c50c4a5ee92307f57fee937d4138791b10fe99eabcd080"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
