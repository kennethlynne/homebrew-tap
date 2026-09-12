class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.27.4/cogenity-darwin-arm64"
      sha256 "961a40d3e251ad1eade21a178e3944ab2f69b69f76945c18b8dc5e2c459f7629"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.27.4/cogenity-darwin-x64"
      sha256 "3193ac7b04b15856bf83e357f0285fe9f0a1c74a7efe2739b566fd3e2c86a4c6"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
