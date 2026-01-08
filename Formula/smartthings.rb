class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.0.1/smartthings-mac-x64.tgz"
    sha256 "d6a9fba7e2624d609b3bc06de4f3633692bbb9205c0e3016f4eeb0b6bb9fecef"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.0.1/smartthings-mac-arm64.tgz"
    sha256 "4e29d7d3b4f01c7426919d7ee3aba33c9cb78c37517a06e0e9fd2a8c8d90cd54"
  end

  version "2.0.1"
  license "Apache-2.0"
  version_scheme 1

  livecheck do
    url :stable
    regex(%r{^@smartthings/cli@(\d+\.\d+\.\d+(-beta\.\d+)?)$}i)
  end

  conflicts_with "smartthings-prerelease", because: "provides a different version of the same binary"

  def install
    bin.install "smartthings"
  end

  test do
    system bin/"smartthings", "--version"
  end
end
