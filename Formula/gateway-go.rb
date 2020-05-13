# This file was generated by GoReleaser. DO NOT EDIT.
class GatewayGo < Formula
  desc "OpenIoTHub GateWay"
  homepage "http://github.com/OpenIoTHub"
  version "0.1.56"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.1.56/gateway-go_0.1.56_Darwin_x86_64.tar.gz"
    sha256 "18b43944cf86c5d373f187851f280786f1f9903feac4004c7cd0fe5514525fbc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.1.56/gateway-go_0.1.56_Linux_x86_64.tar.gz"
      sha256 "409317368ef862e55aa0d199eb649e6e0630edd4cbfa193f52f01cdbfba5ddf1"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.1.56/gateway-go_0.1.56_Linux_arm64.tar.gz"
        sha256 "90c7cedbddfae9e77bd823eb80272f547941eb4aef3140ec94924dc3104d8966"
      else
        url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.1.56/gateway-go_0.1.56_Linux_armv6.tar.gz"
        sha256 "276f2598f236dbb9187c873bf4beb8b0c7804a7913b197b24a618a8d2b6dfc4b"
      end
    end
  end

  def install
    bin.install "gateway-go"
  end

  test do
    system "#{bin}/gateway-go -v"
  end
end
