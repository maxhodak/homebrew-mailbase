# typed: false
# frozen_string_literal: true

class Mailbase < Formula
  desc "Local-first email intelligence system with LLM-powered analysis"
  homepage "https://github.com/maxhodak/homebrew-mailbase"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.2/mailbase-x86_64-apple-darwin.tar.gz"
      sha256 "a3a65ce156a4f7f06971ed467f3bd30666b28c625f24cae97fbdb8c7642ba7f1"
    end

    on_arm do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.2/mailbase-aarch64-apple-darwin.tar.gz"
      sha256 "0085574f7baf2211bc90b69b27051fd650dc4767d9e75e598ca9f972351499ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/maxhodak/homebrew-mailbase/releases/download/v0.3.2/mailbase-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b752b2d2c123d47ae1b9486552d2c91a34f0d0e593fbb17e4d7b02841f224bb"
    end
  end

  def install
    bin.install "mailbase"
  end

  test do
    assert_match "mailbase", shell_output("#{bin}/mailbase --version")
  end
end
