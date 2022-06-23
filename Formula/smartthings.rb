class Smartthings < Formula
  desc "Command Line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.8/smartthings-macos.tar.gz"
  sha256 "4a72a5b09d5f1ad35f019120ffc69682e418b16aeb295509ecd3db719b73863f"
  license "Apache-2.0"

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
