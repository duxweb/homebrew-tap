cask "codux" do
  version "0.9.10"
  sha256 "5a284bb4a2a328ab0739d491e8f6c82f5288c31593c89558482c6830b3b50482"

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
