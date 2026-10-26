class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.1.3/smartthings-mac-arm64.tgz"
  sha256 "d36f08ce715b52c214abe2e840516b2a2b9f9bb2fa36e22bc1fa33d410bf8b3c"

  depends_on arch: :arm64

  version "2.1.3"
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
