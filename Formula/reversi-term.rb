class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-112"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-112/reversi-term-1.0.0-112-osx-arm64.tar.gz"
      sha256 "b74c8b020aae9bd437f22017c5f9dee463f786244f3cff3413e96023abeb2141"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-112/reversi-term-1.0.0-112-osx-x64.tar.gz"
      sha256 "5856e5ab5d48e0b12535952f43f2cdef22e6c356c5c5e082245996a5f8b1e09a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-112/reversi-term-1.0.0-112-linux-arm64.tar.gz"
      sha256 "7030c05ffefffb6d755124ddc1971c1c1510093faf9cd4e28de030465034f98f"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-112/reversi-term-1.0.0-112-linux-x64.tar.gz"
      sha256 "d874ab4646d624f270f3c78b1cc4b7b0ed423312c079df83ff0f49154db05862"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
