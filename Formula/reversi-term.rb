class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-117"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-117/reversi-term-1.0.0-117-osx-arm64.tar.gz"
      sha256 "6492baf45ff3cc6107d22a6765e8a4d992bdceee84f862215a409485fe47e798"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-117/reversi-term-1.0.0-117-osx-x64.tar.gz"
      sha256 "d3352e5a4b03e4a4cf6845fd9f510febc8e65fb217d97f55b9d90583eb16aa82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-117/reversi-term-1.0.0-117-linux-arm64.tar.gz"
      sha256 "0a620872d112b4538672233a3983cb6a3e66c2bdd810aa808805b30750a483c7"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-117/reversi-term-1.0.0-117-linux-x64.tar.gz"
      sha256 "0d364f3132c755ead3dcd03333eb5fd8a67a57b15ba601ce553829764aa1d84a"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
