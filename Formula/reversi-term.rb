class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-116"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-116/reversi-term-1.0.0-116-osx-arm64.tar.gz"
      sha256 "3edec507823067272dc6aa8c7a062ca2d7cf0d0d3ea6aa6c796be5148d50d83a"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-116/reversi-term-1.0.0-116-osx-x64.tar.gz"
      sha256 "ce4ed38943b07838e361aad087ae8223ecf311255789852fdd8a82aeb8f3f524"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-116/reversi-term-1.0.0-116-linux-arm64.tar.gz"
      sha256 "720e940d3f853516a6a256a99f79d2e45ee33643e91826257e502ca22cc0133e"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-116/reversi-term-1.0.0-116-linux-x64.tar.gz"
      sha256 "181d2ff3f38b7e2c3ef43731c4e574a955ddc82f7b402eedcc8c38988519768f"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
