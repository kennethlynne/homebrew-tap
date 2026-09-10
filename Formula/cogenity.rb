class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.27.2/cogenity-darwin-arm64"
      sha256 "7fb440f01fb23b2f9d8aeaad380cda0b5fce1bfbf55c6a6418bb4412c8b198f0"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.27.2/cogenity-darwin-x64"
      sha256 "82cc5e0572afc4c4f66e868935c95a52b6d95755c8183b59c70d2d184269b512"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
