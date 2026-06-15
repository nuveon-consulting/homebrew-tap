class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/reversi"
  version "1.0.0-85"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/reversi/releases/download/v1.0.0-85/reversi-term-1.0.0-85-osx-arm64.tar.gz"
      sha256 "0dc2151cc1f446821a145be53cd7cda026609b832645a7529bc32cb3da56b6ae"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/reversi/releases/download/v1.0.0-85/reversi-term-1.0.0-85-osx-x64.tar.gz"
      sha256 "821f976c04a6f3ba0adce748f2caf9490e66eb6994ba31c97cf7dd3503e61e5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/reversi/releases/download/v1.0.0-85/reversi-term-1.0.0-85-linux-arm64.tar.gz"
      sha256 "0f4af59209e420577eaee6887bfdd11af746899224af2e73a2faecb5ee17f51c"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/reversi/releases/download/v1.0.0-85/reversi-term-1.0.0-85-linux-x64.tar.gz"
      sha256 "c8ae2b731aa4aaae072a2a247f8e879b4087d2f4f76a222a6a5809e81afed158"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
