class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-98"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-98/reversi-term-1.0.0-98-osx-arm64.tar.gz"
      sha256 "749f86337cf406d751dc79bbf7c84661914676fb4a238a315de37b0892916f86"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-98/reversi-term-1.0.0-98-osx-x64.tar.gz"
      sha256 "f7da7abad75b1f19333d13eb15ff985af49acd62e856f07ae5f35634ce9e32f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-98/reversi-term-1.0.0-98-linux-arm64.tar.gz"
      sha256 "4bf693254130c12d40446c439e269bf9ec92f41754bcb3563f676c2d98a9c169"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-98/reversi-term-1.0.0-98-linux-x64.tar.gz"
      sha256 "31a646bbbb22ec31466507035dbb901f795a0ca86ac0789ea04ebd00b927d647"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
