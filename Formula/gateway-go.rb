# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GatewayGo < Formula
  desc "OpenIoTHub GateWay"
  homepage "http://github.com/OpenIoTHub"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.2.4/gateway-go_0.2.4_darwin_amd64.tar.gz"
      sha256 "25924fb78dd94d7781d19b7e1c92377102ab1cbac25056cff3e5d70a08c25bc8"

      def install
        bin.install "gateway-go"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.2.4/gateway-go_0.2.4_darwin_arm64.tar.gz"
      sha256 "9e69535132adf57840e57e910383e61ffc95af176c2ed6c0790606a4c7505acf"

      def install
        bin.install "gateway-go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.2.4/gateway-go_0.2.4_linux_amd64.tar.gz"
      sha256 "7627e856d1aa2a66d567aa198989bd01769b93ee0c1df43595b1a2940cdf40e7"

      def install
        bin.install "gateway-go"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.2.4/gateway-go_0.2.4_linux_arm64.tar.gz"
      sha256 "dfc56cc14468b346e882ca6ea06464d37553602149e932c8a5d91e2069d4b525"

      def install
        bin.install "gateway-go"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/gateway-go/releases/download/v0.2.4/gateway-go_0.2.4_linux_armv6.tar.gz"
      sha256 "3dea21bcf19aa9c9773708a56e3e0de7024805b29ad09a2c8f362e11cc5d79a1"

      def install
        bin.install "gateway-go"
      end
    end
  end

  test do
    system "#{bin}/gateway-go -v"
  end
end
