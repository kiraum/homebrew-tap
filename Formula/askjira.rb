class Askjira < Formula
  version = "0.0.2"

  desc "Cody Chat API for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v#{version}/askJira-v#{version}-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "7f633626713749fce9420c13c420ddc28efaaaf9a934710d95232f477f608080"
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
