cask "ampere" do
  version "0.0.34"
  sha256 "5f7c545431172fdc645d11fbfb6ce94c6bb99248002c2ebaf133e24299f3ca78"

  url "https://github.com/elgs/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "macOS menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/elgs/ampere"

  depends_on macos: ">= :sonoma"

  app "Ampere.app"

  zap trash: "~/Library/Preferences/com.az-code-lab.ampere.plist",
      delete: [
                "/usr/local/bin/az-ampere-smc",
                "/etc/sudoers.d/az-ampere",
              ]
end
