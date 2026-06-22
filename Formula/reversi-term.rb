class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-127"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-127/reversi-term-1.0.0-127-osx-arm64.tar.gz"
      sha256 "078d44fc4d0b6a3cafdd367f20316e220256c8ad279d38e08164cd58d4b253ea"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-127/reversi-term-1.0.0-127-osx-x64.tar.gz"
      sha256 "9baf51a536b7129c537367405fa6ebad9bdd1fd2cd5b2cae2ccced6744642d6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-127/reversi-term-1.0.0-127-linux-arm64.tar.gz"
      sha256 "0e9ffe25c9985e2d2eab8b0f8b99459ee8e88332d87503dc7f6a564d7d5e285a"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-127/reversi-term-1.0.0-127-linux-x64.tar.gz"
      sha256 "2f65e63872e17c8bdea89b3b0e9a5adb1abdbf28e24074e40a68b075e84943bd"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
