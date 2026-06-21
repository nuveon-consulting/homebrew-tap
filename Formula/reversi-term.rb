class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-104"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-104/reversi-term-1.0.0-104-osx-arm64.tar.gz"
      sha256 "594c4d07c29ae7338281e67e3bbe931eb7c70b1c87db3cae17e526c71fd967e3"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-104/reversi-term-1.0.0-104-osx-x64.tar.gz"
      sha256 "6330b7bc547716badd2b95cd22f7d2a938d459b43b72a33ec3906ae46d95658a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-104/reversi-term-1.0.0-104-linux-arm64.tar.gz"
      sha256 "1198c2a9141c14bb0c973e5b12414efe074ae68ef5c63cadebaf7490c2c26113"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-104/reversi-term-1.0.0-104-linux-x64.tar.gz"
      sha256 "61284093dc0a9c153bd00c1d0141ad015720fc3f815cde5695ef4a188ab16bd7"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
