class Smartthings < Formula
  desc "Command-line Interface for the SmartThings APIs"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.10.2/smartthings-macos-x64.tar.gz"
    sha256 "e67426897bca736bc704f4dcdeac27f42f44602146ded9dc956a778e3fc4a932"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/@smartthings/cli@1.10.2/smartthings-macos-arm64.tar.gz"
    sha256 "142661b4a02636ef53255eb1382b5b23991ad39371090a43050b763701b917fc"
  end

  version "1.10.2"
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
