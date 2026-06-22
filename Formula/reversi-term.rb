class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-118"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-118/reversi-term-1.0.0-118-osx-arm64.tar.gz"
      sha256 "85bebe1b5fb8e594dbcd222f8ae6178c77272df658479b324e7582316f5696d8"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-118/reversi-term-1.0.0-118-osx-x64.tar.gz"
      sha256 "495b34fff6f471477429433e2cc7fa8e07ab2db7187273a172d142f19ef157cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-118/reversi-term-1.0.0-118-linux-arm64.tar.gz"
      sha256 "89e3f4160d1acb8b30d54b71f3f2716d2d13644e699827b508912e8a90719833"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-118/reversi-term-1.0.0-118-linux-x64.tar.gz"
      sha256 "73a29944c83f2eb80f993007d4dbd3f8a780a0134a0c34746948b5c1c7073353"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
