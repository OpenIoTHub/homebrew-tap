# This file was generated by GoReleaser. DO NOT EDIT.
class ServerGo < Formula
  desc "OpenIoTHub Server"
  homepage "http://github.com/OpenIoTHub"
  version "1.1.58"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.58/server-go_1.1.58_Darwin_x86_64.tar.gz"
    sha256 "1fbf3f86dc645d2fe1fe730516ca8db605ee41d3f1b10c7809370e13debe97c1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.58/server-go_1.1.58_Linux_x86_64.tar.gz"
      sha256 "f62b0270466682e99947ae5bd8620f6cd0ee4ba9cf6e5c7fe6d9c3b10e1474a5"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.58/server-go_1.1.58_Linux_arm64.tar.gz"
        sha256 "7e86d42d3aeaa592edac0e8a49dc7dcf4f23b61ffaaaf529450a4a3b8cb999e8"
      else
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.58/server-go_1.1.58_Linux_armv6.tar.gz"
        sha256 "d42719825f9fa867986349e01c19d1722f90b1aed04593933d6bd1295f6d01d7"
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
