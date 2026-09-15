class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.30.3/cogenity-darwin-arm64"
      sha256 "8c0ffab882c96f2aa1d36320df8435bcdac792a7104bcec8c92ceeb67fb47bd0"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.30.3/cogenity-darwin-x64"
      sha256 "5f3838c5e31486948636a7d583bcb402b59c2ef73288b05beaf2af05392670ff"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
