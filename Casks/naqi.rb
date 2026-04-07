cask "naqi" do
  version "0.1.0"

  on_arm do
    sha256 :no_check
    url "https://github.com/yasserstudio/naqi/releases/download/v#{version}/Naqi_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 :no_check
    url "https://github.com/yasserstudio/naqi/releases/download/v#{version}/Naqi_#{version}_x64.dmg"
  end

  name "Naqi"
  desc "AI workspace hygiene tool for macOS"
  homepage "https://naqi.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Naqi.app"

  zap trash: [
    "~/.naqi",
    "~/Library/Application Support/app.naqi.desktop",
    "~/Library/Logs/app.naqi.desktop",
  ]
end
