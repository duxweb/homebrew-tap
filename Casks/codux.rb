cask "codux" do
  version "0.9.2"
  sha256 "37274f445c7c8550342ae2e59ecad5f25ce9477a741cd27ff0c7c109aeaa0c63"

  url "https://github.com/duxweb/codux/releases/download/v#{version}/Codux-#{version}-macos-universal.dmg"
  name "Codux"
  desc "Native terminal workspace for AI coding tools"
  homepage "https://github.com/duxweb/codux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Codux.app"

  zap trash: [
    "~/Library/Application Support/Codux",
    "~/Library/Caches/com.duxweb.dmux",
    "~/Library/HTTPStorages/com.duxweb.dmux",
    "~/Library/Preferences/com.duxweb.dmux.plist",
    "~/Library/Saved Application State/com.duxweb.dmux.savedState",
  ]
end
