class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-126"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-126/reversi-term-1.0.0-126-osx-arm64.tar.gz"
      sha256 "d85045d74ae584749333721b50e002c02ae76cc3c8ad4dbeead13d0db194ef7c"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-126/reversi-term-1.0.0-126-osx-x64.tar.gz"
      sha256 "7d66f71aebe07166800a0404a96689b8698e593646a785da810490b6ef3e63f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-126/reversi-term-1.0.0-126-linux-arm64.tar.gz"
      sha256 "3e29143d813c559c5fd37637299d74fa155335fec42672f2448982773a201cbb"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-126/reversi-term-1.0.0-126-linux-x64.tar.gz"
      sha256 "6bf0bfb126700ac64e87311c6c54e81276860968d79548336f38d8134d273aaf"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
