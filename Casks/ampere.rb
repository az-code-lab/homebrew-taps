cask "ampere" do
  version "0.0.56"
  sha256 "fe20da2f60eabfb21339dc18234b179e23c3223684810656914f9e9ee2163d58"

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
