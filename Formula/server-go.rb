# This file was generated by GoReleaser. DO NOT EDIT.
class ServerGo < Formula
  desc "OpenIoTHub Server"
  homepage "http://github.com/OpenIoTHub"
  version "1.1.35"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.35/server-go_1.1.35_Darwin_x86_64.tar.gz"
    sha256 "fe0117f6d777a1c06bd9ae579e212fa9b1aa946ac1d61e2023e1fb16c7a55cfa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.35/server-go_1.1.35_Linux_x86_64.tar.gz"
      sha256 "c4ba24efda4b31bf19be0a8f2ed85347fcd4aee1ae1df3a2e7d62004faf10ad2"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.35/server-go_1.1.35_Linux_arm64.tar.gz"
        sha256 "4d7a930587048fae8cb9dbf87d73f82fb6c471468756b5a936fc5725946bb28c"
      else
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.35/server-go_1.1.35_Linux_armv6.tar.gz"
        sha256 "f5f94d728893bdfce3dadcc13adfedb2ab541dc36a091197157c1254ff8e141b"
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
