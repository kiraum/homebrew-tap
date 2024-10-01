class Askjira < Formula
  version = "0.0.2"

  desc "Cody Chat API for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v#{version}/askJira-v#{version}-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "b3209b4fc764be710128898a21de6c41e2a64c42f927628b76dd4a19443aa748"
  version version
  license "MIT"

  def install
    bin.install "askJira"
    system "hash", "-r"
  end

  test do
    system "#{bin}/askJira", "--version"
  end
end
