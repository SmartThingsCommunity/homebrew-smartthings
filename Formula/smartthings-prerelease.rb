class SmartthingsPrerelease < Formula
  desc "Command-line Interface for the SmartThings APIs, prerelease version"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli/tree/yargs"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/v2.0.0-prerelease1/smartthings-macos-x64.tar.gz"
    disable! date: "2025-10-02", because: "does not currently support Intel Macs, please continue to use the stable formula", replacement: "smartthingscommunity/smartthings/smartthings"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/v2.0.0-prerelease1/smartthings-mac-arm64.tgz"
    sha256 "7471e0fa91936ffe71c219067df537bde5379b5666aa9342243a96245119295a"
  end

  version "2.0.0-prerelease1"
  license "Apache-2.0"
  version_scheme 1
  conflicts_with "smartthings", because: "provides a different version of the same binary"

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
