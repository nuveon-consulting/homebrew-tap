class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-96"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-96/reversi-term-1.0.0-96-osx-arm64.tar.gz"
      sha256 "9516096edb4ee9d0134359166d36c399e93733f5b9549953a5013fc1439cd011"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-96/reversi-term-1.0.0-96-osx-x64.tar.gz"
      sha256 "0c465ec29096a03ed9b8be9f4201b6d9451e3a9906cbcdbc28a701d6988e5e41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-96/reversi-term-1.0.0-96-linux-arm64.tar.gz"
      sha256 "3367ea6177e28492fd034d50c440dffe360269048842eeb0327c22138648d33c"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-96/reversi-term-1.0.0-96-linux-x64.tar.gz"
      sha256 "711d7aea8e863b21a89e66010903929bba8220f88fb9d6c0972b72a3d8652092"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
