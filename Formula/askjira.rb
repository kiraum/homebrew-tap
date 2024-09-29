class Askjira < Formula
  desc "Cody Chat API for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v0.0.1/askJira-v0.0.1-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "ea00257aa688d29e76490dc0e251411e9abe9ee8cdb570766f10fb2d99edc7f6"
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
