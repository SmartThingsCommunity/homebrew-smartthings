class SmartthingsPrerelease < Formula
  desc "Command-line Interface for the SmartThings APIs, prerelease version"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli/tree/yargs"

  if MacOS.version < :ventura
    odie "Requires MacOS 13.5 or newer."
  end

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/v2.0.0-prerelease1/smartthings-mac-x64.tgz"
    sha256 "5106b90b7b4122dfb2bd3ec7bb946faa3fc788e0f10dc9ff37d1fd22e0482694"
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
