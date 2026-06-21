class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-113"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-113/reversi-term-1.0.0-113-osx-arm64.tar.gz"
      sha256 "b291d3ec95da22255d9967c902a6efd82033f3e2dce8f83ef41bb567a63a8c44"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-113/reversi-term-1.0.0-113-osx-x64.tar.gz"
      sha256 "41aa12dd0ed1228e4e1b24f932ec9f0bad7644d3a23d6a2639385ca27d1557b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-113/reversi-term-1.0.0-113-linux-arm64.tar.gz"
      sha256 "d62dbd6058b5cc2663b5cc8ea78bf7ea917ce959a3dd4634111221f3dc267f07"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-113/reversi-term-1.0.0-113-linux-x64.tar.gz"
      sha256 "e37f8978bf03fef55a94d2e388c52c9420d723b25147f520c15546158e0fa5cb"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
