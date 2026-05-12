cask "ampere" do
  version "0.0.44"
  sha256 "ae6917eb21cb16d7127263e6ee2dafc41cfbf8bb79e943f36d1d7e0b3e42bfaf"

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
