class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%403.0.0/smartthings-mac-arm64.tgz"
  sha256 "b76c371c602178a97d31ad567e289f30e6919755f0df02cfd5afbcfa503368c4"

  depends_on arch: :arm64

  version "3.0.0"
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
