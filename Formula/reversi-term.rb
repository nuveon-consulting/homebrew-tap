class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-114"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-114/reversi-term-1.0.0-114-osx-arm64.tar.gz"
      sha256 "a80138a741f8d8461f24504d00ce9a396bceb6534aa79d532e2828d6bae35167"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-114/reversi-term-1.0.0-114-osx-x64.tar.gz"
      sha256 "922e5aaad6eb090a186445fa9a260d8042353293889580591064fee3fbfae9a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-114/reversi-term-1.0.0-114-linux-arm64.tar.gz"
      sha256 "b91986ce01bba7e038f679eb4ecb054d0204a5485bfaec032dec5db53d35a6fa"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-114/reversi-term-1.0.0-114-linux-x64.tar.gz"
      sha256 "3dec8727eddeef9e4b3ff1535c918dcb578fa49aa409c3a2a1825475c3699a2b"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
