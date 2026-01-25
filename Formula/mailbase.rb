# typed: false
# frozen_string_literal: true

class Mailbase < Formula
  desc "Local-first email intelligence system with LLM-powered analysis"
  homepage "https://github.com/maxhodak/homebrew-mailbase"
  version "0.3.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.3/mailbase-x86_64-apple-darwin.tar.gz"
      sha256 "79595d58b78dcf547484ac6f7443953d059bb7823142612ee1abde447c53b57c"
    end

    on_arm do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.3/mailbase-aarch64-apple-darwin.tar.gz"
      sha256 "5da73096efeaf0a00563444725ea7a890432349125af5feb492d2bc73b0a0af7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.3/mailbase-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e92e38f046c671fc9ed9a7bb500fc6b783ec69b94a1e1d611371ebfc9c3f5a9"
    end
  end

  def install
    bin.install "mailbase"
  end

  test do
    assert_match "mailbase", shell_output("#{bin}/mailbase --version")
  end
end
