cask "ampere" do
  version "0.0.35"
  sha256 "5602f3ac6c926afdd9449a33a5930931c6c8f7cea410bc17479d8a0f1cc16479"

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
