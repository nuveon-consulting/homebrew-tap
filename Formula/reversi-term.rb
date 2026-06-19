class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-95"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-95/reversi-term-1.0.0-95-osx-arm64.tar.gz"
      sha256 "a5cb937568f68e91064e6945b815edbaaec9be7a376e2023387860fa5397217d"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-95/reversi-term-1.0.0-95-osx-x64.tar.gz"
      sha256 "649ce5c21d5aaaf2d261ef6e5ea5fd004724347224ca7ea35f609e0567a94b31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-95/reversi-term-1.0.0-95-linux-arm64.tar.gz"
      sha256 "56b46ada10caba9204be06ce7f42ce16e75ae5ad2ed2534547522ee52774da68"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-95/reversi-term-1.0.0-95-linux-x64.tar.gz"
      sha256 "ec29c270b1bfa5139d38bef1aa1039e78119192778580d68fcf32e92b88f903e"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
