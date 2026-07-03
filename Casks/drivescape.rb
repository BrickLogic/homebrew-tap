cask "drivescape" do
  version "1.4.0"
  sha256 "cace3ef70448dd938a01df705a9352d13faf7885a7d32caf7f41c85e65a6eec4"

  url "https://github.com/BrickLogic/ChartyDriveReleases/releases/download/v#{version}/DriveScape_#{version}_aarch64.dmg"
  name "DriveScape"
  desc "Disk-space analyzer and cleaner - sunburst map, dev-junk cleanup, duplicate finder"
  homepage "https://drivescape.dev/"

  # The app updates itself (signed Tauri updater) - don't fight it from brew.
  auto_updates true
  depends_on arch: :arm64

  app "DriveScape.app"

  zap trash: [
    "~/Library/Application Support/DriveScape",
    "~/Library/Application Support/com.bricklogic.drivescape",
    "~/Library/Caches/com.bricklogic.drivescape",
    "~/Library/HTTPStorages/com.bricklogic.drivescape",
    "~/Library/LaunchAgents/com.bricklogic.drivescape.lowdisk.plist",
    "~/Library/Preferences/com.bricklogic.drivescape.plist",
    "~/Library/Saved Application State/com.bricklogic.drivescape.savedState",
    "~/Library/WebKit/com.bricklogic.drivescape",
  ]
end
