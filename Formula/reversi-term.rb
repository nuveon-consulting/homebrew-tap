class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-101"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-101/reversi-term-1.0.0-101-osx-arm64.tar.gz"
      sha256 "d612a357bcf2b3a574b04294b834c613e03c76dab454477ff35fc700f6a41d1c"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-101/reversi-term-1.0.0-101-osx-x64.tar.gz"
      sha256 "95c205057593f8dcfe41d5413832304ccc8cb44a6d5866f63f1c21261cc41e5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-101/reversi-term-1.0.0-101-linux-arm64.tar.gz"
      sha256 "8a6e9610ad4877018dd64778dfb46372deec8049fa5791657c9e5b1e02f07f96"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-101/reversi-term-1.0.0-101-linux-x64.tar.gz"
      sha256 "6d9a1d33e88849e33924d6b2d9d65b401e022be37d28d9c97accefde64c1bc60"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
