cask "contextbar" do
  version "0.8.17"
  sha256 "83d2678feca2116f9f0eb0270bb5547f9b3ba31ef9902ea3af6e0921e45737e2"

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
