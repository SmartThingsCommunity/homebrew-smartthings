class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.10.5/smartthings-macos-x64.tar.gz"
    sha256 "124e09dd28ed352916041b70593fc122752ff2a7c4dae1b444a0688f72f9322e"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.10.5/smartthings-macos-arm64.tar.gz"
    sha256 "bd594b5be090313a8ce9934ab52ca4bf7bddabedda7d1e26c15eb10f24cae480"
  end

  version "1.10.5"
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
