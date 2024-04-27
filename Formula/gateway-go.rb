# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GatewayGo < Formula
  desc "OpenIoTHub GateWay"
  homepage "http://github.com/OpenIoTHub"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.3.0/gateway-go_0.3.0_darwin_amd64.tar.gz"
      sha256 "8782e9e1ff278866288234b443de1132e981c1c15d6563cc92efc653f45dfae4"

      def install
        bin.install "gateway-go"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.3.0/gateway-go_0.3.0_darwin_arm64.tar.gz"
      sha256 "125c1f32b931d4d895119d88bce454362700fb735b0843b2830a76f01bf68402"

      def install
        bin.install "gateway-go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.3.0/gateway-go_0.3.0_linux_amd64.tar.gz"
      sha256 "adce303a0ffc1b0d9a4d033b6aa07f0e8531447eb87536baf0495355f1d33d7e"

      def install
        bin.install "gateway-go"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.3.0/gateway-go_0.3.0_linux_armv6.tar.gz"
      sha256 "d394f47894670270e3357d49db4a297bcdb163f2ced6e0304ad203175fcfafac"

      def install
        bin.install "gateway-go"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.3.0/gateway-go_0.3.0_linux_arm64.tar.gz"
      sha256 "0b7182800cbb1acbe4e3fb04941ad57d322eb1216c1d2886e810cae8c70fcce2"

      def install
        bin.install "gateway-go"
      end
    end
  end

  test do
    system "#{bin}/gateway-go -v"
  end
end
