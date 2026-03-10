class Kon < Formula
  desc "Lightweight client for Kon — execute tools on your kond server"
  homepage "https://github.com/Kaden-Schutt/kon"
  version "0.5.1"
  license "MIT"

  on_linux do
    url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.1/kon-linux-x64"
    sha256 "8d98fbd769e12586790bf028cb5dd1e6786b017d5dbab655293d6c512579390a"
  end

  def install
    bin.install Dir["kon-*"].first => "kon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kon --version")
  end
end
