class Kon < Formula
  desc "Lightweight client for Kon — execute tools on your kond server"
  homepage "https://github.com/Kaden-Schutt/kon"
  version "0.5.0"
  license "MIT"

  on_linux do
    url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.0/kon-linux-x64"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install Dir["kon-*"].first => "kon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kon --version")
  end
end
