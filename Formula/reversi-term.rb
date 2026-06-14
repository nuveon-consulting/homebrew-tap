class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/reversi"
  version "1.0.0-82"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/reversi/releases/download/v1.0.0-82/reversi-term-1.0.0-82-osx-arm64.tar.gz"
      sha256 "3eb9ca41e615e09eea524c740c483f29058adf39cd4c8ab49b7152d1d54e1225"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/reversi/releases/download/v1.0.0-82/reversi-term-1.0.0-82-osx-x64.tar.gz"
      sha256 "727d36f9787f46f91868906d711690e28ad11151cafce2350f4f983864ecc2c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/reversi/releases/download/v1.0.0-82/reversi-term-1.0.0-82-linux-arm64.tar.gz"
      sha256 "7509f3b15262ae143b9bef40f6aebbfe0d6ed69cff88d7e95b523642ca1e9a3d"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/reversi/releases/download/v1.0.0-82/reversi-term-1.0.0-82-linux-x64.tar.gz"
      sha256 "833622df0e1987bd293136a860d9770df0b9f1441de8f3ad0477c2830be00b70"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
