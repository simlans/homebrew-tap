class OpCache < Formula
  desc "Fast cache for 1Password CLI reads"
  homepage "https://github.com/simlans/direnv-libs"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/direnv-libs/releases/download/v2.0.0/op-cache-aarch64-apple-darwin.tar.gz"
      sha256 "1568352a7cee9a08b85d69396fa824d4372023920fe148e30e22c07fe49b4205"
    else
      url "https://github.com/simlans/direnv-libs/releases/download/v2.0.0/op-cache-x86_64-apple-darwin.tar.gz"
      sha256 "95e6d9cfb84f20783f74e4b51c1dad9630e2f7b3a1a17e4c4698f15e676c1552"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/direnv-libs/releases/download/v2.0.0/op-cache-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e28b4943d8892455889ca492ef29b889cdf8995434f3b7c167f73c76fc3e4ce"
    else
      url "https://github.com/simlans/direnv-libs/releases/download/v2.0.0/op-cache-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc657541d4e2eb0f5fae77bdd7188bc99660f1886a74415cfb2fc99612b58e14"
    end
  end

  def install
    bin.install "op-cache"
  end
end
