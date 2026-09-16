class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.8/cogenity-darwin-arm64"
      sha256 "aaba91298bc427247f7acc3450a3b85ca23fd196614105b9b6c9b17a87270d3e"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.8/cogenity-darwin-x64"
      sha256 "3352ab3c65c05271354a93f1a068e3e7b331376093f88d217d1b3703408193b5"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
