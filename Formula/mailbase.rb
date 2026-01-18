# typed: false
# frozen_string_literal: true

class Mailbase < Formula
  desc "Local-first email intelligence system with LLM-powered analysis"
  homepage "https://github.com/maxhodak/homebrew-mailbase"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.2.0/mailbase-x86_64-apple-darwin.tar.gz"
      sha256 "e97c6a3755ae5e5cd3fc5d6f84d2bd68d19ce4af742398a3a4b2878cc67f9738"
    end

    on_arm do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.2.0/mailbase-aarch64-apple-darwin.tar.gz"
      sha256 "d3457cdd885f16ef8a706f42eedb4fa21dee138acbd1d572123d65aa1e6f61a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.2.0/mailbase-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84dcbbf220cf07fb95c3ea6d689a402445acba65cb3822c2103a0968811ee086"
    end
  end

  def install
    bin.install "mailbase"
  end

  test do
    assert_match "mailbase", shell_output("#{bin}/mailbase --version")
  end
end
