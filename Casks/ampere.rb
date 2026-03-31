cask "ampere" do
  version "0.0.33"
  sha256 "9ccd9a100efc030c688d7a3389e51c7994d165490ab1ff59e3dc55858cf56360"

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
