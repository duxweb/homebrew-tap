cask "codux" do
  version "0.1.11"
  sha256 "23c4e5d42149582b71fabec2a8dfd7f42f2e655f1fc4ec8a5856c9a86ae249c5"

  url "https://github.com/duxweb/codux/releases/download/v#{version}/Codux-#{version}-macos-universal.dmg"
  name "Codux"
  desc "Native macOS terminal workspace for AI coding tools"
  homepage "https://github.com/duxweb/codux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Codux.app"

  zap trash: [
    "~/Library/Application Support/dmux",
    "~/Library/Caches/com.duxweb.dmux",
    "~/Library/HTTPStorages/com.duxweb.dmux",
    "~/Library/Preferences/com.duxweb.dmux.plist",
    "~/Library/Saved Application State/com.duxweb.dmux.savedState",
  ]
end
