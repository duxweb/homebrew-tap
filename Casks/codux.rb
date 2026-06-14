cask "codux" do
  version "1.8.0"

  on_arm do
    sha256 "d2a392229a2dda7e2588f71086d1c3dc6f63fa6120cd18c771505df5f0ae8de9"
    url "https://github.com/duxweb/codux/releases/download/v#{version}/codux-#{version}-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "e20a2d38f2a7e3fe0acf82fe21bab75702c20861620c6c7072ac3d3f1ec4da5e"
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
