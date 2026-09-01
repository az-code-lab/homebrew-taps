# The Homebrew cask, kept here rather than only in the tap: it describes this
# app, so it belongs next to the app and inside the test suite's reach
# (ReleasePipelineTests holds it to the project's real bundle id, deployment
# target and product name). ./release.sh renders it into the tap on every
# release, rewriting the two lines below and nothing else — so the tap copy
# is output, and hand-edits there are overwritten.
#
# version/sha256 are placeholders. A real value never lives in this file:
# release.sh knows them only after it has built and hashed the DMG.
cask "dbclient" do
  version "0.0.1"
  sha256 "09dedad0906cb55f306dbba8a71ccf66538109c312fe34f006b5946a0f916d90"

  url "https://github.com/az-code-lab/dbclient-releases/releases/download/v#{version}/DBClient.dmg"
  name "DBClient"
  desc "Database client for PostgreSQL, MySQL, MongoDB, Redis, and other engines"
  homepage "https://github.com/az-code-lab/dbclient-releases"

  # A bare symbol is already the MINIMUM release, not an exact match — the
  # ">= :sequoia" string still parses, but `brew style` rewrites it. This is
  # LSMinimumSystemVersion 15.0 said in Homebrew's words.
  #
  # Apple Silicon only, and not by choice: the SQL Server driver links
  # Homebrew's FreeTDS, which ships arm64-only, so there is no x86_64 slice to
  # build. Without this an Intel Mac installs the app and then cannot open it.
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "DBClient.app"

  # Saved connections live in Application Support; their passwords live in the
  # keychain under "dev.azcode.dbclient.connections", which a cask cannot
  # remove — `zap` deletes files, not keychain items. The Containers path is
  # where an early sandboxed build kept its data (ConnectionStore still
  # migrates out of it).
  zap trash: [
    "~/Library/Application Support/DBClient",
    "~/Library/Caches/dev.azcode.DBClient",
    "~/Library/Containers/dev.azcode.DBClient",
    "~/Library/HTTPStorages/dev.azcode.DBClient",
    "~/Library/Preferences/dev.azcode.DBClient.plist",
    "~/Library/Saved Application State/dev.azcode.DBClient.savedState",
  ]
end
