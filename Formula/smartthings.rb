class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.16/smartthings-macos.tar.gz"
  sha256 "b9650339cfd3154102ba6c5e21532b10a21df17ba55b2c5bf38ce0f7ed7c9498"
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
