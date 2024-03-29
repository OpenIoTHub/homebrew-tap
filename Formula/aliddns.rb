# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aliddns < Formula
  desc "Aliyun ddns service"
  homepage "http://github.com/OpenIoTHub"
  version "0.0.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.23/aliddns_0.0.23_darwin_arm64.tar.gz"
      sha256 "db4a9ae96787937fe7355d0ebe3fc71a1470924fe7089009445fb8fc535d9066"

      def install
        bin.install "aliddns"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.23/aliddns_0.0.23_darwin_amd64.tar.gz"
      sha256 "d2c1a283d58568038399af5c86b6a64bbc17bd727f280385aec31f4ff107e57a"

      def install
        bin.install "aliddns"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.23/aliddns_0.0.23_linux_arm64.tar.gz"
      sha256 "9534bca39a32b5aadbf143136486e9a803e33450f15f7617fc4549cad0183ba6"

      def install
        bin.install "aliddns"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.23/aliddns_0.0.23_linux_amd64.tar.gz"
      sha256 "692cb21fe379826c6cc7591c397f3fcd9f60f4087a60714d611aaf22e0721677"

      def install
        bin.install "aliddns"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.23/aliddns_0.0.23_linux_armv6.tar.gz"
      sha256 "834c7a7f48b5d34adf3afd3e931b70b78fa1d425d219c224382ccb1b17e42042"

      def install
        bin.install "aliddns"
      end
    end
  end

  test do
    system "#{bin}/aliddns -v"
  end
end
