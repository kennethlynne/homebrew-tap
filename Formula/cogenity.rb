class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.11/cogenity-darwin-arm64"
      sha256 "f64d31ffe6da6813ead190474d270d32e4d68725589b7a5d5bf61332ff541222"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.11/cogenity-darwin-x64"
      sha256 "894cb477639ef9652e9d9ccba3b5ddea2e92ebb083b619e78a05248fa378bcdb"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
