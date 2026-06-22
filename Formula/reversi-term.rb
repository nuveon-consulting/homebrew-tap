class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-125"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-125/reversi-term-1.0.0-125-osx-arm64.tar.gz"
      sha256 "4a4a80918677af0a83361c63d04055dd14f168c5e781f886e5f7fe89272e3f5e"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-125/reversi-term-1.0.0-125-osx-x64.tar.gz"
      sha256 "b3a4298da764031e91521d88dec1b64f1cba24acbe0cb34e4cb423f842427ba3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-125/reversi-term-1.0.0-125-linux-arm64.tar.gz"
      sha256 "fe9f856e8081d5422678e98fe0331cb65a11baa55625ff55ff95d25d3771670c"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-125/reversi-term-1.0.0-125-linux-x64.tar.gz"
      sha256 "8d3ba26e3a2a02c24b4b4606a3ed7a8ca7951bf77e0af7f753dfd8fcc8b8503b"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
