class Smartthings < Formula
  desc "Command Line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.11/smartthings-macos.tar.gz"
  sha256 "c91a5d1c51c51002f98e0342d18cef770ccc86f50532b480edfb1666d6667002"
  license "Apache-2.0"

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
