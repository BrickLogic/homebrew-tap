cask "drivescape" do
  version "1.4.1"
  sha256 "9a3f38007b2439c46eb0951ffca18ff3a8f6a2df0412a7246d20056bb21d93d7"

  url "https://github.com/BrickLogic/ChartyDriveReleases/releases/download/v#{version}/DriveScape_#{version}_aarch64.dmg",
      verified: "github.com/BrickLogic/ChartyDriveReleases/"
  name "DriveScape"
  desc "Disk-space analyzer and cleaner"
  homepage "https://drivescape.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (signed Tauri updater) - don't fight it from brew.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "DriveScape.app"

  zap trash: [
    "~/Library/Application Support/com.bricklogic.drivescape",
    "~/Library/Application Support/DriveScape",
    "~/Library/Caches/com.bricklogic.drivescape",
    "~/Library/HTTPStorages/com.bricklogic.drivescape",
    "~/Library/LaunchAgents/com.bricklogic.drivescape.lowdisk.plist",
    "~/Library/Preferences/com.bricklogic.drivescape.plist",
    "~/Library/Saved Application State/com.bricklogic.drivescape.savedState",
    "~/Library/WebKit/com.bricklogic.drivescape",
  ]
end
