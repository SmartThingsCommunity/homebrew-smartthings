class Smartthings < Formula
  desc "Command Line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.9/smartthings-macos.tar.gz"
  sha256 "05050457118a41e1eda150883c1d791df68e0b3f1a246a440d2ded048f986065"
  license "Apache-2.0"

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
