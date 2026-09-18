class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.16/cogenity-darwin-arm64"
      sha256 "324c874ac9c0467434843381c1d3333c7f1ba19521b4fddad8b5fb5831a456a1"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.16/cogenity-darwin-x64"
      sha256 "97426d9b9f52242ae3e414aca288c20d75d2480d1caefef24331ebdd6d7b82bc"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
