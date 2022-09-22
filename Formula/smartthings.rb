class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.0.0-beta.18/smartthings-macos-x64.tar.gz"
  sha256 "783dd49ff2b1af59a95af3baed9201f01bb37eaa1cf87ce73f86376c45cd3692"
  license "Apache-2.0"
  version "1.0.0-beta.18"
  version_scheme 1

  livecheck do
    url :stable
    regex(/^@smartthings\/cli@(\d+\.\d+\.\d+(-beta\.\d+)?)$/i)
  end

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
