class Smartthings < Formula
  desc "Command Line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.8/smartthings-macos.tar.gz"
  sha256 "302dc2df934bdc6134882725e79dbca311d4e84abc2b9db30726614cd457461b"
  license "Apache-2.0"

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
