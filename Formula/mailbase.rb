# typed: false
# frozen_string_literal: true

class Mailbase < Formula
  desc "Local-first email intelligence system with LLM-powered analysis"
  homepage "https://github.com/maxhodak/homebrew-mailbase"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.4.1/mailbase-x86_64-apple-darwin.tar.gz"
      sha256 "80ce609f4dd0e9904ad7d81f9c73b26edf13db59518b7a5fc0d1fa5e17e159c8"
    end

    on_arm do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.4.1/mailbase-aarch64-apple-darwin.tar.gz"
      sha256 "5eaaeb30042d9ad0d35def8c3ff708f730aba6b4e4050de2f74ad8fe201abe7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.4.1/mailbase-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7819922c92a2ee3ecf1b324578db7d419d8153b9019f27195f805b24cb386cc2"
    end
  end

  def install
    bin.install "mailbase"
  end

  test do
    assert_match "mailbase", shell_output("#{bin}/mailbase --version")
  end
end
