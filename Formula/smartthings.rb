class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.13/smartthings-macos.tar.gz"
  sha256 "8a9c6fff2d648d7e295a8e2092160e9ab2f04e697f74a8142c29554fe8629531"
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
