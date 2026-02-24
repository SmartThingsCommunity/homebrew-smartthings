class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.1.0/smartthings-mac-x64.tgz"
    sha256 "bde992f43726bd416947c273fce040c5d74c929f28d71e223872e77bdc49119c"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%402.1.0/smartthings-mac-arm64.tgz"
    sha256 "a0415461f64071dcaf25dfa32d5798b73161a0cfec91b8030742a39812fced07"
  end

  version "2.1.0"
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
