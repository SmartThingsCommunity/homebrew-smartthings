class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.0.0/smartthings-mac-x64.tgz"
    sha256 "cf1ebd86ca01624b5223445ac9aeeb2eb4226618a53f0313168ef5bbf57295cb"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.0.0/smartthings-mac-arm64.tgz"
    sha256 "d97b53686530f86f6dc3adf9c3429bed18242c0070b31caee526e313a5f4c6fd"
  end

  livecheck do
    url :stable
    regex(%r{^@smartthings/cli@(\d+\.\d+\.\d+(-beta\.\d+)?)$}i)
  end

  version "2.0.0"
  license "Apache-2.0"
  version_scheme 1
  conflicts_with "smartthings-prerelease", because: "provides a different version of the same binary"

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
