class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.15/cogenity-darwin-arm64"
      sha256 "270ce2aa6623e59cf1943e0dd1f36fb8ca4f4749ab1049d66a696f994834a117"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.15/cogenity-darwin-x64"
      sha256 "099ec1ae0f4b7c67617bea373f42f2d6f2b3220b909ff1228174bfd870537e22"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
