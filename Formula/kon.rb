class Kon < Formula
  desc "Lightweight client for Kon — execute tools on your kond server"
  homepage "https://github.com/Kaden-Schutt/kon"
  url "https://registry.npmjs.org/@schuttdev/kon/-/kon-0.5.0.tgz"
  sha256 "9abae3bad1ad22f3a939462fffc929101061e41dabb894c15b84f97e11053891"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kon --version")
  end
end
