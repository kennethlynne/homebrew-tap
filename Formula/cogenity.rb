class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.13/cogenity-darwin-arm64"
      sha256 "c95d424ecc2487b06eb81de3569e5324e7ca2005175712b80016b662ab094736"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.13/cogenity-darwin-x64"
      sha256 "5944045281bc6a392a5a9567c9a77a2ff6e32f17f74868ba133aab4554a778aa"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
