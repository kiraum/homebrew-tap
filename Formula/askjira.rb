class Askjira < Formula
  version = "0.0.3"

  desc "Cody Chat API for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v#{version}/askJira-v#{version}-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "b312eead20c903c746eb7e0f20389e58093268e417f31e5ba68f39c9c20ca81e"
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
