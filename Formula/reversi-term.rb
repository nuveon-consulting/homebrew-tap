class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-93"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-93/reversi-term-1.0.0-93-osx-arm64.tar.gz"
      sha256 "db2a040dd92636204f491f2b66e4a7bf3908f720260ec9e0869fb3750a48ec69"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-93/reversi-term-1.0.0-93-osx-x64.tar.gz"
      sha256 "6d63fc9af7198c39a425ef0da3a93c38ceacd1a83c0bd91d53c5a11c7b289504"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-93/reversi-term-1.0.0-93-linux-arm64.tar.gz"
      sha256 "1f148d2f3b966f0a4cc848d9cd0c37986752046b45b6e03f6fb146a7d465d370"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-93/reversi-term-1.0.0-93-linux-x64.tar.gz"
      sha256 "f0f22e799906e8b84064e06b2303feaaa7f84ef08e04cd9bec4a552a181114fb"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
