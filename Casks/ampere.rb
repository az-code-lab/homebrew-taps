cask "ampere" do
  version "0.0.47"
  sha256 "56879a8c6830606f94b461fda9b6b7cd9e78b2d9c26110a6147b9e86460a3931"

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
