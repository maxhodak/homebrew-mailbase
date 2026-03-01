# typed: false
# frozen_string_literal: true

class Mailbase < Formula
  desc "Local-first email intelligence system with LLM-powered analysis"
  homepage "https://github.com/maxhodak/homebrew-mailbase"
  version "0.4.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.4.3/mailbase-x86_64-apple-darwin.tar.gz"
      sha256 "7d027d6e2bf138cdfcb911c784430f1e013ce300d91ddf00a703717ac2ebeac1"
    end

    on_arm do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.4.3/mailbase-aarch64-apple-darwin.tar.gz"
      sha256 "9232ef630a6f75bca668a230dc8fae3055c629f7d2dccd82877e28e529dff908"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.4.3/mailbase-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "464a3876cf02599de0bdcbc2af6bc648838bd1c01c6d1e5a2fc1e7290395f8d7"
    end
  end

  def install
    bin.install "mailbase"
  end

  test do
    assert_match "mailbase", shell_output("#{bin}/mailbase --version")
  end
end
