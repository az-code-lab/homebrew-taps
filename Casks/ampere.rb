cask "ampere" do
  version "0.0.58"
  sha256 "9206f84cb10a96b3b633a0140e66679d469606a60a22b9a70edb910e39a1d8db"

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
