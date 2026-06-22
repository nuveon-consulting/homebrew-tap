class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-121"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-121/reversi-term-1.0.0-121-osx-arm64.tar.gz"
      sha256 "94fb2216d49f051f7c75443983b5f8249167e91756d9e28d7eff73d3e4fa925d"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-121/reversi-term-1.0.0-121-osx-x64.tar.gz"
      sha256 "a08bbed8e9d5ae0b7e744e80d3164f00c455aa622c8a5b27e348230f20131127"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-121/reversi-term-1.0.0-121-linux-arm64.tar.gz"
      sha256 "cd032923862154680f743fb3896d570aed4f52bb3faa8df1ee225958a864716d"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-121/reversi-term-1.0.0-121-linux-x64.tar.gz"
      sha256 "ce71933c448e9cd453cde37be04902a7441fb19ab770f550be5fbddbbc7620e8"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
