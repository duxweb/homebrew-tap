cask "codux" do
  version "2.0.0-rc.1"

  on_arm do
    sha256 "e33e29a041ca480e20089ae9d58bf347f1a6c4b03041a4cbe4cae8e7f0e0c380"
    url "https://github.com/duxweb/codux/releases/download/v#{version}/codux-#{version}-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "c304c390b0706d575700cfa9471272ed6c393fef8de60a69624ff85e115193bf"
    url "https://github.com/duxweb/codux/releases/download/v#{version}/codux-#{version}-macos-x86_64.dmg"
  end

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
    "~/Library/Caches/com.duxweb.codux",
    "~/Library/HTTPStorages/com.duxweb.codux",
    "~/Library/Preferences/com.duxweb.codux.plist",
    "~/Library/Saved Application State/com.duxweb.codux.savedState",
  ]
end
