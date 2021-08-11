# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aliddns < Formula
  desc "Aliyun ddns service"
  homepage "http://github.com/OpenIoTHub"
  version "0.0.10"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.10/aliddns_0.0.10_Darwin_x86_64.tar.gz"
      sha256 "e3b66b46e86ac218d92ffb5873e9eabcc9187a25486ce88c2052f276afeb511f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.10/aliddns_0.0.10_Linux_x86_64.tar.gz"
      sha256 "2b0efbb971959c0edca114562209df05c649d5a2d5b99d1e8d9fe005b6a085a3"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.10/aliddns_0.0.10_Linux_armv6.tar.gz"
      sha256 "f36e55e5eb53bf8af1454a5fb73376f8d34a9158dee875c5ba8aeaa246b5d69a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.10/aliddns_0.0.10_Linux_arm64.tar.gz"
      sha256 "c6bdc940caebfb3499c0cb8a9ec48c2eff82c47235453697696966de047ca6ec"
    end
  end

  def install
    bin.install "aliddns"
  end

  test do
    system "#{bin}/aliddns -v"
  end
end
