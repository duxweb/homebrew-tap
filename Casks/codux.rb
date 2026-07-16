cask "codux" do
  version "2.0.2"

  on_arm do
    sha256 "cc5e2b2ac52ff0e6169702eb9d41f877e816df652798b6f2ddf32cfaa803201d"
    url "https://github.com/duxweb/codux/releases/download/v#{version}/codux-#{version}-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "f349134f6af3c6694e197950a13db837ebc97495ed3f19d61714e19f70cbb2fa"
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
