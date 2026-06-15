class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-91"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-91/reversi-term-1.0.0-91-osx-arm64.tar.gz"
      sha256 "509a863b4ea427027a4114afedbc80b2f17ebcc164ad8e5514d6a449f60a9e76"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-91/reversi-term-1.0.0-91-osx-x64.tar.gz"
      sha256 "12c0e330c42aa6b93c3152a1f2d2eb3413db3bc5259da71f5b4c511d45527aec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-91/reversi-term-1.0.0-91-linux-arm64.tar.gz"
      sha256 "e2cb44cc0a62075724b65fe75efca33fd46f3381db4b7f0549a038f575494da7"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-91/reversi-term-1.0.0-91-linux-x64.tar.gz"
      sha256 "b3ab644bc6aa0a6d7bb99c91c11039ffd237f16f10e1fa32dc1bdf71220da64c"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
