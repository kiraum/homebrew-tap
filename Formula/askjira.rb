class Askjira < Formula
  desc "Cody Chat CLI for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v0.0.1/askJira-v0.0.1-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "a4d82ad5cb4a60365220f52954a2df105091a9115c2242fb7a470b79c0e29f18"
  version "0.0.1"
  license "MIT"

  def install
    bin.install "askJira"
    system "hash", "-r"
  end

  test do
    system "#{bin}/askJira", "--version"
  end
end
