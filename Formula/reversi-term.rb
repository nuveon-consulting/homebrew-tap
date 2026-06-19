class ReversiTerm < Formula
  desc "Terminal client for the Reversi game server"
  homepage "https://github.com/nuveon-consulting/homebrew-tap"
  version "1.0.0-97"

  on_macos do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-97/reversi-term-1.0.0-97-osx-arm64.tar.gz"
      sha256 "ab16c13e64cbc13a67776497d6584fe2a2047713e02b966661af81a954dfb4ed"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-97/reversi-term-1.0.0-97-osx-x64.tar.gz"
      sha256 "fe6967bc844aaa5e66ac1b9c4d1a02f4c676e29f18c476a20fdc7ae043d34c88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-97/reversi-term-1.0.0-97-linux-arm64.tar.gz"
      sha256 "4d3518791a66df432dadc57aae6c7cf134987c18023355bf41edd8dba4a9e68a"
    end
    on_intel do
      url "https://github.com/nuveon-consulting/homebrew-tap/releases/download/v1.0.0-97/reversi-term-1.0.0-97-linux-x64.tar.gz"
      sha256 "19b7e87772162b083b2897ae75fd051cbfdf546a9ab371df48b2028e1caeb423"
    end
  end

  def install
    bin.install "reversi-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reversi-term --version").strip
  end
end
