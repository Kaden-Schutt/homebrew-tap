class Kond < Formula
  desc "Kon server — expose local tools to Claude over HTTPS"
  homepage "https://github.com/Kaden-Schutt/kon"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.1/kond-darwin-arm64"
      sha256 "609465e9232113ae55ac82f1712729fb2fda0d2ea9851008ee8ab313cfa54fee"
    end
    on_intel do
      url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.1/kond-darwin-x64"
      sha256 "1a84fc4862ab0340249d77ad69e9d8db48585534a00443e0be75ea9a2eede13b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.1/kond-linux-x64"
      sha256 "b7f458f6005dfc44e5322a9e3ec5656ad66e6eba3386d3f01ee458bd7a0ce125"
    end
    on_intel do
      url "https://github.com/Kaden-Schutt/kon/releases/download/v0.5.1/kond-linux-x64"
      sha256 "b7f458f6005dfc44e5322a9e3ec5656ad66e6eba3386d3f01ee458bd7a0ce125"
    end
  end

  def install
    bin.install Dir["kond-*"].first => "kond"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kond --version")
  end
end
