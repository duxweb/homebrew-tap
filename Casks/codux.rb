cask "codux" do
  version "2.0.3"

  on_arm do
    sha256 "0a6c014b60a3a696dd2dbaaaae420ba5191d7b65339d244f81fed6055fd16af8"
    url "https://github.com/duxweb/codux/releases/download/v#{version}/codux-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "dae02da3200a750aa22bcd887289f9234db25067a187703059a5e051b03a1f85"
    url "https://github.com/duxweb/codux/releases/download/v#{version}/codux-macos-x86_64.dmg"
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
