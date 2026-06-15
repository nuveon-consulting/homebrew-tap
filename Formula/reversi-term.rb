class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-90"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-90/reversi-term-1.0.0-90-osx-arm64.tar.gz"
      sha256 "86c59fe26f997eee09729dcd0add9c3964a25522fc0759f25776d2401f179932"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-90/reversi-term-1.0.0-90-osx-x64.tar.gz"
      sha256 "9a1d0c059e7cb055ddf60e5590a8caad7b3bdb16ffa0f8c6b6bd0d2c115b4697"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-90/reversi-term-1.0.0-90-linux-arm64.tar.gz"
      sha256 "53812b298c3db76665f13e60d715bed1038bb67124e06d1210935fe7c5498900"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-90/reversi-term-1.0.0-90-linux-x64.tar.gz"
      sha256 "e5247aee7f5303424eeb5d648142ce2e361d7276559dc34ac768a866a9d83e4e"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
