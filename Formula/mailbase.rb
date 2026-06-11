# typed: false
# frozen_string_literal: true

class Mailbase < Formula
  desc "Local-first email intelligence system with LLM-powered analysis"
  homepage "https://github.com/maxhodak/homebrew-mailbase"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.6.0/mailbase-x86_64-apple-darwin.tar.gz"
      sha256 "f7b697f2372a0b7acdd8a12b59a75d6b991fd438c803b4c9ae14ac1394c817d2"
    end

    on_arm do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.6.0/mailbase-aarch64-apple-darwin.tar.gz"
      sha256 "70a0beb161c30b9f71ccf8f12f9adfb7e24c11b7a039deadd6676619c7c4c665"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.6.0/mailbase-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "031abc471179da091121b49ea60c473f2870eaf9c7b6444c24da08ade6282af1"
    end
  end

  def install
    bin.install "mailbase"
  end

  test do
    assert_match "mailbase", shell_output("#{bin}/mailbase --version")
  end
end
