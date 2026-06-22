class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-123"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-123/reversi-term-1.0.0-123-osx-arm64.tar.gz"
      sha256 "33b8e750ad68b6e1aa47f2cd3d3663c35d52f5b25ea0661d845edeaba10bd03e"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-123/reversi-term-1.0.0-123-osx-x64.tar.gz"
      sha256 "d27b67a3b5178650405e0bcc13646dffe60cbda5e8a8458150f6784d5cd036d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-123/reversi-term-1.0.0-123-linux-arm64.tar.gz"
      sha256 "e5c8db32fcb7c5c15347b146aa276aaa04193c233160f74f7e738b67e127a1b2"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-123/reversi-term-1.0.0-123-linux-x64.tar.gz"
      sha256 "974241ae62fa8a2f1f20408122899c3d83b8aead22890b0be45a63ce1c89a2be"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
