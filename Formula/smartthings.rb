class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"
  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.1.1/smartthings-macos-x64.tar.gz"
  version "1.1.1"
  sha256 "c1da89f73d3b3b200bc0fa0e8dd9fb6f4972b85f1d70dd7336fdd9831ad8a0e8"
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
