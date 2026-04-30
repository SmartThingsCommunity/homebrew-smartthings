class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.1.2/smartthings-mac-x64.tgz"
    sha256 "e822ee5f9cd72fd732ecf96dad7d80d2e70cb05c436d1c7fb3b076c934b974bd"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.1.2/smartthings-mac-arm64.tgz"
    sha256 "0cd323a2261cddfae67769639d84f4505018c04e3786915f1ca7399495b3948a"
  end

  version "2.1.2"
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
