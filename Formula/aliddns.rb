# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aliddns < Formula
  desc "Aliyun ddns service"
  homepage "http://github.com/OpenIoTHub"
  version "0.0.11"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.11/aliddns_0.0.11_Darwin_x86_64.tar.gz"
      sha256 "dc704305bc6a48f23c5e82e2b95fc0d6329a14fc59adcc534fe9cda0eb9b14fd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.11/aliddns_0.0.11_Linux_x86_64.tar.gz"
      sha256 "99e2484c7efaa01b6a65ef2f67f82587592512c1dc3eb17f2c651780862c2bfb"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.11/aliddns_0.0.11_Linux_armv6.tar.gz"
      sha256 "127dfbe243e849f648c939f40f13534f767af0ee491aab310d3aa9b5ebdddf5f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.11/aliddns_0.0.11_Linux_arm64.tar.gz"
      sha256 "0b5521f025f7ae3129f76409e3c331c9d5ebd2753302a82ce61051e46f99968a"
    end
  end

  def install
    bin.install "aliddns"
  end

  test do
    system "#{bin}/aliddns -v"
  end
end
