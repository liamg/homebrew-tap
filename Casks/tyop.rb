cask "tyop" do
  version "1.0.0"

  on_arm do
    url "https://github.com/liamg/tyop/releases/download/v#{version}/tyop-darwin-arm64.tar.gz"
    sha256 "REPLACE_WITH_ARM64_SHA256"
  end

  on_intel do
    url "https://github.com/liamg/tyop/releases/download/v#{version}/tyop-darwin-amd64.tar.gz"
    sha256 "REPLACE_WITH_AMD64_SHA256"
  end

  name "tyop"
  desc "Hotkey-triggered typo fixer for macOS — corrects the focused text field"
  homepage "https://github.com/liamg/tyop"

  auto_updates false

  app "tyop.app"

  postflight do
    system_command "/usr/bin/open",
                   args: ["-a", "#{appdir}/tyop.app"],
                   sudo: false
  end

  uninstall quit: "com.liamg.tyop"
  zap trash: [
    "~/Library/Application Support/tyop",
  ]
end
