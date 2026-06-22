class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-119"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-119/reversi-term-1.0.0-119-osx-arm64.tar.gz"
      sha256 "7843caf072da67ae6df85e63c8ea6763c3eea3cb8a2cb45df8ebef7c387dd48b"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-119/reversi-term-1.0.0-119-osx-x64.tar.gz"
      sha256 "377aee36cd6f108e036bde8dc01c6b62572d1e76bcdfcadc55ad049d57ea6ea9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-119/reversi-term-1.0.0-119-linux-arm64.tar.gz"
      sha256 "5d72bdbc444a7d71c6fbe654d26aed75d3b82df05e8070a258732738feb47027"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-119/reversi-term-1.0.0-119-linux-x64.tar.gz"
      sha256 "e8b9be40df4e390d7bacd0f9269a5031ad330a73716d7c6ba07513dcade708f3"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
