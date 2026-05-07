cask "codux" do
  version "0.9.6"
  sha256 "5a0f67b6679ba01cf0b7d6e6debac71546ef381ee250bcdea1085f5fc7e16291"

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
