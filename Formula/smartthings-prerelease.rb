class SmartthingsPrerelease < Formula
  desc "Command-line Interface for the SmartThings APIs, prerelease version"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli/tree/yargs"

  if MacOS.version < :ventura
    odie "Requires MacOS 13.5 or newer."
  end

  if Hardware::CPU.intel?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/v2.0.0-prerelease2/smartthings-mac-x64.tgz"
    sha256 "b63b9733ff430d310e1f88927e4b4abda750c2dbc739653294fe7290ad04a04c"
  elsif Hardware::CPU.arm?
    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/v2.0.0-prerelease2/smartthings-mac-arm64.tgz"
    sha256 "db86cf118643414f7879f6fb1d9da5476b59ee2dbb4e1f83cb917bf8341b0513"
  end

  version "2.0.0-prerelease2"
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
