# This file was generated by GoReleaser. DO NOT EDIT.
class GatewayGo < Formula
  desc "OpenIoTHub GateWay"
  homepage "http://github.com/OpenIoTHub"
  version "0.1.37"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.1.37/gateway-go_0.1.37_Darwin_x86_64.tar.gz"
    sha256 "94476112ec2bb78594bb8cb72a7b0c11239dc2c0568b1777111ce4b489786f2e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.1.37/gateway-go_0.1.37_Linux_x86_64.tar.gz"
      sha256 "e8482462d15f3b326d4c886e36de680d71c792f799682bc9007e63299280632f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.1.37/gateway-go_0.1.37_Linux_arm64.tar.gz"
        sha256 "5369c54b96167598067628f078e66a23ce4adc61713a3d91da31ada8b166782e"
      else
        url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.1.37/gateway-go_0.1.37_Linux_armv6.tar.gz"
        sha256 "c54bdf1240885be33c60a679c1c751f01ce8cfcf39f08288a55c37bee6901835"
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
