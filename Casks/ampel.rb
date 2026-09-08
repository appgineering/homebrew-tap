cask "ampel" do
  version "0.3.2"
  sha256 "ddc24aca0649ecdc427692c0c30296f76b18b2352f094d8c1553b4e06cac5d7a"

  url "https://github.com/appgineering/Ampel/releases/download/v#{version}/Ampel-#{version}.zip"
  name "Ampel"
  desc "Menu bar traffic light for Claude Code sessions"
  homepage "https://github.com/appgineering/Ampel"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Ampel.app"

  uninstall quit: "com.appgineering.ampel"

  # Ampel's own state only. The hooks it registers live in the user's
  # ~/.claude/settings.json alongside other tools' hooks, and removing entries
  # from a shared config on uninstall is not something a cask should attempt.
  zap trash: [
    "~/.ampel",
    "~/Library/Preferences/com.appgineering.ampel.plist",
  ]

  caveats <<~EOS
    Ampel needs Claude Code hooks to see your sessions. Launch it and use the
    setup guide, or the "Install hooks" button in its menu.

    Uninstalling does not remove those hooks from ~/.claude/settings.json,
    since that file is shared with other tools. Turn them off from Ampel's
    settings before uninstalling if you want them gone.
  EOS
end
