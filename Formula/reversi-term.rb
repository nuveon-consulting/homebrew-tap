class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-103"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-103/reversi-term-1.0.0-103-osx-arm64.tar.gz"
      sha256 "5dd7ebf6d44fb3b94ae6d7061dca95df0a81dc94a447ed71852db3395704cbc1"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-103/reversi-term-1.0.0-103-osx-x64.tar.gz"
      sha256 "522dc38d6b0324a36207ee712e2d5f7221ef91426a126d2eb90bb2fcb242eaf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-103/reversi-term-1.0.0-103-linux-arm64.tar.gz"
      sha256 "b6e2cf29b5065a3956052b43dfd58c12feb5cb09d2db39bdf9bc5b7b126e0531"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-103/reversi-term-1.0.0-103-linux-x64.tar.gz"
      sha256 "f5ff64cc8aa9bc76aae700da4bb1d065d2acaaf8177c464e5d01e15aa3145b38"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
