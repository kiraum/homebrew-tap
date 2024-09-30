class Askjira < Formula
  version = "0.0.2"

  desc "Cody Chat API for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v#{version}/askJira-v#{version}-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "d65d3197b6a2f15caefb011f59c921a7c78fbab87aa7309e5d860fe3d6c0f2ae"
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
