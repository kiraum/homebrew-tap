class Cody < Formula
  desc "Sourcegraph Cody CLI"
  homepage "https://sourcegraph.com"
  url "https://registry.npmjs.org/@sourcegraph/cody/-/cody-5.5.15.tgz"
  sha256 "2f25357f26e7710b71e4abead3ad9ee3fc5817fbbd6a78cd6726556982bc935a"
  license "MIT"

  depends_on "node" => :build

  def install
    ENV["NPM_CONFIG_PREFIX"] = "#{libexec}"
    system "npm", "install", "-g", "@sourcegraph/cody"
    system "brew", "rehash"
    bin.install_symlink Dir["#{libexec}/bin/*"]
    system "brew", "rehash"
  end

  test do
    system "#{bin}/cody", "--version"
  end
end
