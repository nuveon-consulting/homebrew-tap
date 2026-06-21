class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-117"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-117/reversi-term-1.0.0-117-osx-arm64.tar.gz"
      sha256 "fc63e242cb2b2db38ae089585d47acf0af0dced22c9ef1861f24d562e7f0b249"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-117/reversi-term-1.0.0-117-osx-x64.tar.gz"
      sha256 "e8a056a19aa2a36ae0b99e75672ae2aa4beb5bef5eb9ae76b691c12682f4f759"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-117/reversi-term-1.0.0-117-linux-arm64.tar.gz"
      sha256 "9b4bc19b28e68a97f34f98d1f0a5acb569364be0403aa31cdccb6ef4429f1900"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-117/reversi-term-1.0.0-117-linux-x64.tar.gz"
      sha256 "b0476dd613b8857b0caeac4bb6cb055a860c0d3345414070f9ed4a16c1ee56b4"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
