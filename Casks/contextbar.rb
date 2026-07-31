cask "contextbar" do
  version "0.8.16"
  sha256 "d5af1d56473ae6f72105c3069695d244dbe894749819c1c12f6465f17c19a866"

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
