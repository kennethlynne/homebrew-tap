class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.7/cogenity-darwin-arm64"
      sha256 "df7f43087c988ded2f0307e54caefd8c74e816bb8b6788b81e8aec9cfedbf778"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.7/cogenity-darwin-x64"
      sha256 "f2024993c1e376cd5b829936fecd5fef55930cfee450a1f0000a7652bcd0fde4"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
