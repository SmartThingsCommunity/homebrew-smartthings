class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.10.6/smartthings-macos-x64.tar.gz"
    sha256 "bfea9447964995ff3a1fd1062ce596ecc13a4827e2035b04cef47d803cbd0704"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.10.6/smartthings-macos-arm64.tar.gz"
    sha256 "d26fc5a33fbcb2ecdf83af66e2b1e63096460bebefa1df95a3b4d58d38a83476"
  end

  version "1.10.6"
  license "Apache-2.0"
  version_scheme 1
  conflicts_with "smartthings-prerelease", because: "provides a different version of the same binary"

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
