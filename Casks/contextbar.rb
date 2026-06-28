cask "contextbar" do
  version "0.8.4"
  sha256 "b2404619e4c15ee876862f22ecc0cfd2134c643747ad9b35ca86b2485451963f"

  url "https://github.com/varkart/contextbar/releases/download/v#{version}/Context.Bar_v#{version}_universal.dmg"
  name "Context Bar"
  desc "macOS menu bar app for managing AI coding tool skills and MCP servers"
  homepage "https://github.com/varkart/contextbar"

  depends_on macos: :ventura

  app "Context Bar.app"

  zap trash: [
    "~/Library/Application Support/com.varkart.contextbar",
    "~/Library/Preferences/com.varkart.contextbar.plist",
    "~/Library/Logs/com.varkart.contextbar",
    "~/Library/Caches/com.varkart.contextbar",
  ]
end
