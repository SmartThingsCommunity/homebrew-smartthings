class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.9.0/smartthings-macos-x64.tar.gz"
  version "1.9.0"
  sha256 "6bba53b820bbada43f76ee38f8a4ece1e275a56009d5d085e3cf11d8cd0e0e60"
  license "Apache-2.0"
  version_scheme 1

  livecheck do
    url :stable
    regex(%r{^@smartthings/cli@(\d+\.\d+\.\d+(-beta\.\d+)?)$}i)
  end

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
