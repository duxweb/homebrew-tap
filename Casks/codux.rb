cask "codux" do
  version "1.8.3"

  on_arm do
    sha256 "79cb9dc3c20ba4833d96f7d67245f365e669a79df66083beb8809c998a0cf328"
    url "https://github.com/duxweb/codux/releases/download/v#{version}/codux-#{version}-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "a67bab5fad9787986e0db668398e78aa9e47e264c34732634ee02426d1daec3a"
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
