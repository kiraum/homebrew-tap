class Rislive < Formula
  version = "0.0.1"

  desc "A Rust-based CLI tool for monitoring BGP updates from RIPE RIS (Routing Information Service) Live in real-time."
  homepage "https://github.com/kiraum/rislive_rust"
  url "https://github.com/kiraum/rislive_rust/raw/main/releases/v#{version}/rislive-v#{version}-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "6dc79d958eb4f9c5a489a953d71dfcac8334e3052414c7836cf59cce8b33a4fa"
  version version
  license "MIT"

  def install
    bin.install "rislive"
    system "hash", "-r"
  end

  test do
    system "#{bin}/rislive", "--version"
  end
end
