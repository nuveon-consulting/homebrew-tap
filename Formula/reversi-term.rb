class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-128"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-128/reversi-term-1.0.0-128-osx-arm64.tar.gz"
      sha256 "687a0721edea5b381fba521632d16026cc7e8183e856344a0661579b1b68a64d"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-128/reversi-term-1.0.0-128-osx-x64.tar.gz"
      sha256 "a43116d791d8cfaf1f25ebf2cdb1322ea4aef0171a21ed1d583b4fe12af7851e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-128/reversi-term-1.0.0-128-linux-arm64.tar.gz"
      sha256 "85c7998f4fc7726801db625d26954a75708ab36638ce98183a3ec7a4bb0a9a01"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-128/reversi-term-1.0.0-128-linux-x64.tar.gz"
      sha256 "39f594448836f1593ac86ba1541abe10212fe95ed380db64181d370b1753ef91"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
