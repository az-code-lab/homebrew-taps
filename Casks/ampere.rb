cask "ampere" do
  version "0.0.23"
  sha256 "0a08936487496859243d5c705365830c56789caec3aa59e7ff714ee3d5ca31cd"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"
end
