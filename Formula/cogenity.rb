class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.9/cogenity-darwin-arm64"
      sha256 "6a9b4ce05c3852533a2cbbf23abd0cf9378518e32f26d46ee22eda47fbfa0446"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.9/cogenity-darwin-x64"
      sha256 "3cb47fec064a769016fe1f0564c1995a374baf6baed45f6838b2a37fcfe7b6db"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
