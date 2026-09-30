cask "ampere" do
  version "0.0.66"
  sha256 "adf508ed38343e92537fb15b7ec34e6d7bcbb983c4fc742bbd37f8ebd6a432d7"

  url "https://github.com/az-code-lab/ampere/releases/download/v#{version}/Ampere.dmg"
  name "Ampere"
  desc "Menu bar app for monitoring battery status and controlling charging"
  homepage "https://amperebattery.app/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Ampere.app"

  # A graceful quit restores charging and sleep settings itself. A stuck
  # app is killed instead; its root watchdog then restores them. Nothing
  # else is removed here, and no further stanza is needed for the rest:
  # Homebrew runs this stanza during `brew upgrade` too, so removing the
  # helper or the preferences here would cost an admin prompt and the
  # settings on every upgrade. Instead the app registers a root launchd
  # job that watches the bundle. Once the bundle has been gone for two
  # minutes, the job has the helper restore the system and remove the
  # helper, its sudoers rule, its state, the job itself, and every
  # account's preferences and caches, so a plain `brew uninstall` ends as
  # if the app had never been installed.
  uninstall quit:   "com.az-code-lab.ampere",
            signal: [["TERM", "com.az-code-lab.ampere"], ["KILL", "com.az-code-lab.ampere"]]
end
