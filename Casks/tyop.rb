cask "tyop" do
  version "1.0.0"

  on_arm do
    url "https://github.com/liamg/tyop/releases/download/v#{version}/tyop-darwin-arm64.tar.gz"
    sha256 "bebd24be4f3adc6a8c9781d7a5a0e0ec658bce03273513ce5355e7ad7abeaa66"
  end

  on_intel do
    url "https://github.com/liamg/tyop/releases/download/v#{version}/tyop-darwin-amd64.tar.gz"
    sha256 "1be32ef23ddeeb27ffd8637305c51145c9761f10cd4602cce34ce569f51f97c1"
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
