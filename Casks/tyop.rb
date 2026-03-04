cask "tyop" do
  version "1.0.1"

  on_arm do
    url "https://github.com/liamg/tyop/releases/download/v#{version}/tyop-darwin-arm64.tar.gz"
    sha256 "77bf6e23efb0bfe0741ab12559fc1ec831bfccd405e23a668931e2b842e760e6"
  end

  on_intel do
    url "https://github.com/liamg/tyop/releases/download/v#{version}/tyop-darwin-amd64.tar.gz"
    sha256 "77b8ac2132fa27c2d108c764f858d0929c4c441ba6d35fa1afd965e770eb54be"
  end

  name "tyop"
  desc "Hotkey-triggered typo fixer for macOS — corrects the focused text field"
  homepage "https://github.com/liamg/tyop"

  auto_updates false

  app "tyop.app"

  uninstall quit: "com.liamg.tyop"
  zap trash: [
    "~/Library/Application Support/tyop",
  ]
end
