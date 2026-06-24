cask "llmmanager" do
  version "0.8.0"
  sha256 "8db29787025f00543faa420b446c803bb3571d2ce71d56e8733a6aff2e417ad6"

  url "https://github.com/varkart/llmmanager/releases/download/v#{version}/LLM.Manager_v#{version}_universal.dmg"
  name "LLM Manager"
  desc "macOS menu bar app for managing AI coding tool skills and MCP servers"
  homepage "https://github.com/varkart/llmmanager"

  depends_on macos: ">= :ventura"

  app "LLM Manager.app"

  zap trash: [
    "~/Library/Application Support/com.varkart.llmmanager",
    "~/Library/Preferences/com.varkart.llmmanager.plist",
    "~/Library/Logs/com.varkart.llmmanager",
    "~/Library/Caches/com.varkart.llmmanager",
  ]
end
