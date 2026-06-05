class OpCache < Formula
  desc "Fast cache for 1Password CLI reads"
  homepage "https://github.com/simlans/op-cache"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/op-cache/releases/download/v0.1.0/op-cache-aarch64-apple-darwin.tar.gz"
      sha256 "20ff276e8a58e971d3320e009e1e20137293ce3507f4e5f8e48a5bc453ffe04f"
    else
      url "https://github.com/simlans/op-cache/releases/download/v0.1.0/op-cache-x86_64-apple-darwin.tar.gz"
      sha256 "97a0798018dec9fc1ac9536ad81c8161258d0b29717911f869f537541c49084b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/op-cache/releases/download/v0.1.0/op-cache-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25a475600de2ca52696313f99327d4737861e7d96382e15f73b7c954d5d3ab14"
    else
      url "https://github.com/simlans/op-cache/releases/download/v0.1.0/op-cache-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e3d91bf4d520e4e120feb8157935ecd57df63b7bbd0247ea88b775eff095ca0"
    end
  end

  def install
    bin.install "op-cache"
  end
end
