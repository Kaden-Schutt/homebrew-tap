class Kond < Formula
  desc "Kon server — expose local tools to Claude over HTTPS"
  homepage "https://github.com/Kaden-Schutt/kon"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.0/kond-darwin-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.0/kond-darwin-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.0/kond-linux-x64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.0/kond-linux-x64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install Dir["kond-*"].first => "kond"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kond --version")
  end
end
