class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-88"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-88/reversi-term-1.0.0-88-osx-arm64.tar.gz"
      sha256 "5a17450d197c5e08f16442e2a383abc39c2717e57ae373499b59c6ed2a0f92da"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-88/reversi-term-1.0.0-88-osx-x64.tar.gz"
      sha256 "1000d9967b2e50660cd1499de9dbaf7f566d8d57c5339cc0015ac8f27f532ddd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-88/reversi-term-1.0.0-88-linux-arm64.tar.gz"
      sha256 "4486127d876c2ca6897aa8c6e2c41959f3c2573c4b14650f0577e0dc714ea5ae"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-88/reversi-term-1.0.0-88-linux-x64.tar.gz"
      sha256 "d70575a54e8baff1323b3e6767145141af3a72ed117ce6b50d7d3eef6241129d"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
