class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-89"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-89/reversi-term-1.0.0-89-osx-arm64.tar.gz"
      sha256 "f7abe36ca381602e3c1b41f08e031ca00c07430d935b3ebbe97ff02d7097afe5"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-89/reversi-term-1.0.0-89-osx-x64.tar.gz"
      sha256 "b0470ede5ee13d1753352caa5dad41ffca5afeda60965d53af812e9d4eef7e02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-89/reversi-term-1.0.0-89-linux-arm64.tar.gz"
      sha256 "b8908ba6f83b45bef2a0671f94381decb51956f0fc504c2be016695b8772317d"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-89/reversi-term-1.0.0-89-linux-x64.tar.gz"
      sha256 "b6277b7e54734b17990e15f619277d173ef3a1c11db55750f5b47d28f0fcd204"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
