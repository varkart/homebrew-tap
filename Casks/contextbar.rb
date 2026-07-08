cask "contextbar" do
  version "0.8.8"
  sha256 "551ef740321f98b6420554903cef75f0024a616b12d5ab988200a5d1afbeb187"

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
