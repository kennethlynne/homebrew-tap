class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.12/cogenity-darwin-arm64"
      sha256 "92337aeba0f47237b7d62e6504367de88dff14c9d248c98ed00b188dd21be34e"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.12/cogenity-darwin-x64"
      sha256 "7b2e94b7d24ee9a40085d71709be62e9b99c8ad7c51aecb6472fc4908091125c"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
