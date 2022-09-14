class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.17/smartthings-macos.tar.gz"
  sha256 "9ee2297be88c43cec576439a0732aa61b9b2848e9c5649ccc96601fa053f5e83"
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
