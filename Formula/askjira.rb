class Askjira < Formula
  desc "Cody Chat CLI for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v0.0.1/askJira-v0.0.1-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "7a6ee808c5fff304bdb2e3e6a6584717ed21f8b7c00caa5167cdcf803900b753"
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
