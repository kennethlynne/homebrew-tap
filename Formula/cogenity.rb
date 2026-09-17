class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.14/cogenity-darwin-arm64"
      sha256 "e7851d2f7d9e60f9bd69bf36e29cc09b7dc8dc10782590a9264d8e2cf1e29d55"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.14/cogenity-darwin-x64"
      sha256 "cc531be7fc2ac76eac1602aaba352bc0187b58050af5caaf7258e4b9f70c0845"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
