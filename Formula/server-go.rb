# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ServerGo < Formula
  desc "OpenIoTHub Server"
  homepage "http://github.com/OpenIoTHub"
  version "1.2.7"

  on_macos do
    on_intel do
      url "https://github.com/OpenIoTHub/server-go/releases/download/v1.2.7/server-go_1.2.7_darwin_amd64.tar.gz"
      sha256 "6f76d3d4539f2f8cd07a6e32af5697d037afa69bb50811cacccd0b1f1b5a7a9b"

      def install
        bin.install "server-go"
      end
    end
    on_arm do
      url "https://github.com/OpenIoTHub/server-go/releases/download/v1.2.7/server-go_1.2.7_darwin_arm64.tar.gz"
      sha256 "6a32518f8094bcf13521e349034281fe964aba5dab65eda85ea8fce33eeb59f4"

      def install
        bin.install "server-go"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.2.7/server-go_1.2.7_linux_amd64.tar.gz"
        sha256 "5df3d6a4c9d30fbdfcd079415f764eba5a40360403280db24bea47e6d2fad856"

        def install
          bin.install "server-go"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.2.7/server-go_1.2.7_linux_armv6.tar.gz"
        sha256 "b5f5200bf43781fd26bb44b165b64e5712ef6494214557cfcee7f681ce75aed7"

        def install
          bin.install "server-go"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.2.7/server-go_1.2.7_linux_arm64.tar.gz"
        sha256 "fb68a08a4407685ec9b3c131de2910f3759b18b909f307668c67237c5ebb907f"

        def install
          bin.install "server-go"
        end
      end
    end
  end

  test do
    system "#{bin}/server-go -v"
  end
end
