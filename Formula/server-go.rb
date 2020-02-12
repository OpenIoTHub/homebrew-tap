# This file was generated by GoReleaser. DO NOT EDIT.
class ServerGo < Formula
  desc "OpenIoTHub Server"
  homepage "http://github.com/OpenIoTHub"
  version "1.1.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.20/server-go_1.1.20_Darwin_x86_64.tar.gz"
    sha256 "6a541be0c57a14156cbc9d441a534a6f07bda9dea3a2a1d24a74b749e10ed9f6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.20/server-go_1.1.20_Linux_x86_64.tar.gz"
      sha256 "2e3797bd29b63f0f6bfcbdc44cf01548b775a1a286f437e2833b8c0d1054851c"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.20/server-go_1.1.20_Linux_arm64.tar.gz"
        sha256 "080881bb466bf165b0c8f99a94379a0a0b9486bb956ac7149cd49161900b9aa4"
      else
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.20/server-go_1.1.20_Linux_armv6.tar.gz"
        sha256 "fa7b842316dba8d8e85e14925246f931f57879268c642b38bb5a4f3e005fd0d2"
      end
    end
  end

  def install
    bin.install "server-go"
  end

  test do
    system "#{bin}/server-go -v"
  end
end
