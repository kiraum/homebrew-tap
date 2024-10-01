class Askjira < Formula
  version = "0.0.3"

  desc "Cody Chat API for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v#{version}/askJira-v#{version}-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "8057e672bdfe3514a4f066aa9f8b0b23c09067720a56c1e7c235fe2e0b5377d2"
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
