cask "codux" do
  version "1.9.1"

  on_arm do
    sha256 "188363409bb48d61d99b37810bd1cd8ee4d05a03791a4dba45a9dd1f5a37a634"
    url "https://github.com/duxweb/codux/releases/download/v#{version}/codux-#{version}-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "d385ccfb4e78c40489e85e82e6b633ea3e47cb4f1149023932e7ef08ceb919f6"
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
