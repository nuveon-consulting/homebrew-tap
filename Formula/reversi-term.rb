class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-106"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-106/reversi-term-1.0.0-106-osx-arm64.tar.gz"
      sha256 "ed6afab88e3debeacdb4c8220deb562b829fc1d7de7c2563498b4e026a3dce6a"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-106/reversi-term-1.0.0-106-osx-x64.tar.gz"
      sha256 "ccf9764e871fc99edd6a44793d6a75d7406d53fec69dbdb4015b60def830939a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-106/reversi-term-1.0.0-106-linux-arm64.tar.gz"
      sha256 "4e091fd12bc9ae35e221bba114e554e5f43f0ffd92544129bba2c57745d296c6"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-106/reversi-term-1.0.0-106-linux-x64.tar.gz"
      sha256 "1b192d66794a35cec910df089c8e1e8109b1ea922ff8c5f7c4eb01c9cfae0dc2"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
