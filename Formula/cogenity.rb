class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.26.0/cogenity-darwin-arm64"
      sha256 "0aaacdf7a838cc32ce9fa43f6822f169b968484ad93a3a7db87d585f69f0a61e"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.26.0/cogenity-darwin-x64"
      sha256 "86a114ab44bd0eb68fc69fbf6fce17c64c20e60b29cd78087008f5be8220300d"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
