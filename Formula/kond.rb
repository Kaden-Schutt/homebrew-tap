class Kond < Formula
  desc "Server daemon for Kon — expose tools to Claude over HTTPS"
  homepage "https://github.com/Kaden-Schutt/kon"
  url "https://registry.npmjs.org/@schuttdev/kond/-/kond-0.5.0.tgz"
  sha256 "8396365f09281244d7040bd235941a24b90b26cfc942c07baae85bec815195af"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kond --version")
  end
end
