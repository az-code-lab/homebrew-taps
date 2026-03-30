cask "ampere" do
  version "0.0.30"
  sha256 "dc4c5ee1ae5fd0bbabefe7e1f7ba0da0bc16cecac5511f5f7dfd6a92152bf98c"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
