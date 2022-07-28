class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.12/smartthings-macos.tar.gz"
  sha256 "5e8396ce368783b3a4370d805d1c2d6f11aea1ce64bc1353ca77d9aa247c583e"
  license "Apache-2.0"

  livecheck do
    url :url
  end

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
