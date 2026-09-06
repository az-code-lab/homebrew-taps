cask "ampere" do
  version "0.0.59"
  sha256 "93efc58fc428238413e24ac1beeec9f05eafd42ac3830a253e5a00020927ccf0"

  url "https://github.com/az-code-lab/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "Menu bar app for monitoring battery status and controlling charging"
  homepage "https://github.com/az-code-lab/ampere"

  depends_on macos: :sonoma

  app "Ampere.app"

  # A graceful quit restores charging and sleep settings itself. A stuck
  # app is killed instead; its root watchdog then restores them.
  uninstall quit:   "com.az-code-lab.ampere",
            signal: [["TERM", "com.az-code-lab.ampere"], ["KILL", "com.az-code-lab.ampere"]]

  # Restore before deleting the helper, in case nothing was running to do
  # it. The helper exists only once charge control has been enabled. A
  # successful restore empties the state directory; a failed one leaves
  # the saved settings for the still-running watchdog to retry, so the
  # directory is only removed when empty.
  zap script: {
        executable:   "/bin/sh",
        args:         ["-c", "h=/Library/PrivilegedHelperTools/az-ampere-smc; if [ -x $h ]; then $h restore; fi"],
        sudo:         true,
        must_succeed: false,
      },
      delete: [
        "/etc/sudoers.d/az-ampere",
        "/Library/PrivilegedHelperTools/az-ampere-smc",
        "/usr/local/bin/az-ampere-smc",
      ],
      trash:  "~/Library/Preferences/com.az-code-lab.ampere.plist",
      rmdir:  "/Library/Application Support/az-ampere"
end
