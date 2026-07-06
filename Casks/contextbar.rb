cask "contextbar" do
  version "0.8.7"
  sha256 "35cde9ea57fba89400463ac2c00b4f47532b5c86be6e5404014d2002a5551a90"

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
