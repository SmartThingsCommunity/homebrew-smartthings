class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.10.3/smartthings-macos-x64.tar.gz"
    sha256 "22e9bfd2876b687328b209e6bcb616e0b258338070e046c35c423d28aca5f278"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.10.4/smartthings-macos-arm64.tar.gz"
    sha256 "c7816bfb47775acbec6f62e5b837fb4eb529a28f8dce67acca97231ba4946062"
  end

  version "1.10.4"
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
