# typed: false
# frozen_string_literal: true

class Mailbase < Formula
  desc "Local-first email intelligence system with LLM-powered analysis"
  homepage "https://github.com/maxhodak/homebrew-mailbase"
  version "0.7.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.7.1/mailbase-x86_64-apple-darwin.tar.gz"
      sha256 "d5ac052226e07b65de3ededfc39b9d91f86f3f51640edb5109427bd3cc3f0bbe"
    end

    on_arm do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.7.1/mailbase-aarch64-apple-darwin.tar.gz"
      sha256 "86263ca731bc4488b1bc1c3fdd9881d053dd09e41d7bc440c71f6f48cc082848"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.7.1/mailbase-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ba7a946c75e16a6bee1bcb9129eb20197e6c49f88fa020e38d789ae9d6d41d5"
    end
  end

  def install
    bin.install "mailbase"
  end

  test do
    assert_match "mailbase", shell_output("#{bin}/mailbase --version")
  end
end
