cask "ampere" do
  version "0.0.46"
  sha256 "9efda0a2b4e1b472d0ff1df02ef4b6d0b667c411668e55e30c347b1f1b13e602"

  url "https://github.com/az-code-lab/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "Menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/az-code-lab/ampere"

  depends_on macos: :sonoma

  app "Ampere.app"

  zap delete: [
        "/etc/sudoers.d/az-ampere",
        "/usr/local/bin/az-ampere-smc",
      ],
      trash:  "~/Library/Preferences/com.az-code-lab.ampere.plist"
end
