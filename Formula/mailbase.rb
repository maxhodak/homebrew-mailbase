# typed: false
# frozen_string_literal: true

class Mailbase < Formula
  desc "Local-first email intelligence system with LLM-powered analysis"
  homepage "https://github.com/maxhodak/homebrew-mailbase"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.1/mailbase-x86_64-apple-darwin.tar.gz"
      sha256 "d00357d7a57ca41d683e64a8afb6eca7349154c520475bbfc45328f4b7b60ad6"
    end

    on_arm do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.1/mailbase-aarch64-apple-darwin.tar.gz"
      sha256 "c88d2e092db4eeb0cec8ff5c35a651a8a291e86ed2d03eebea95c12701d34d94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.1/mailbase-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efd2249456ea80eddedf95256f163cd36cac02593b64ea0ec16f34716827a79e"
    end
  end

  def install
    bin.install "mailbase"
  end

  test do
    assert_match "mailbase", shell_output("#{bin}/mailbase --version")
  end
end
