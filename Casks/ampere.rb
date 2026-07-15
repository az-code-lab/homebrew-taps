cask "ampere" do
  version "0.0.53"
  sha256 "e6f8a310661b6d02c77248a0c90482af84f76ab956746f142afdd79a22dd80b9"

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
