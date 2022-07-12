class Smartthings < Formula
  desc "Command Line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.10/smartthings-macos.tar.gz"
  sha256 "b68e64793b46eb47fe3423947a432aad867c909e635ffa4a7baeeaf026b15be0"
  license "Apache-2.0"

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
