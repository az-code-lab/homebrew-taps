cask "ampere" do
  version "0.0.39"
  sha256 "ab6cdeedb79af6341fa5bb7bfa06a55f37b9d33b84c183388e5f4d13369198c3"

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
