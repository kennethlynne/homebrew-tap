class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.10/cogenity-darwin-arm64"
      sha256 "a6398d244f101a9458219ff7173e9b4663ca78321b6d1cf1f1fb2848eb17fa39"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.31.10/cogenity-darwin-x64"
      sha256 "27e560b39f47ba350d267e36f8788b49e94ea05e94c4da9d5dfd4a709b96ba5e"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end
