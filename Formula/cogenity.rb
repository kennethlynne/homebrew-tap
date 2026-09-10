class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.27.3/cogenity-darwin-arm64"
      sha256 "d3988683f717a91fdf03127951ae6ff445d9263b3fccc7591e45485ce58ffbce"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.27.3/cogenity-darwin-x64"
      sha256 "ca06cb4ab841388d1d56ff73c15b16c91df926680471fda62820622509b1e7ce"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
