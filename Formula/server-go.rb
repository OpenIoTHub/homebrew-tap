# This file was generated by GoReleaser. DO NOT EDIT.
class ServerGo < Formula
  desc "OpenIoTHub Server"
  homepage "http://github.com/OpenIoTHub"
  version "1.1.50"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.50/server-go_1.1.50_Darwin_x86_64.tar.gz"
    sha256 "6b5c5e02b95385e6ffd08fd03ed5edcb3d2ccb90831c2366345f08eb31ebe87c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.50/server-go_1.1.50_Linux_x86_64.tar.gz"
      sha256 "21923aee9c36abaf1a3e041d9dcbeabc68717e98ea8cc92292b9565966d8fe48"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.50/server-go_1.1.50_Linux_arm64.tar.gz"
        sha256 "320e81da6139e91702eddd6206402cca78f8baf70d7a043d271c25a844802740"
      else
        url "https://github.com/OpenIoTHub/server-go/releases/download/v1.1.50/server-go_1.1.50_Linux_armv6.tar.gz"
        sha256 "65a4c31d03d965347e913dc5ce0abf7c26426ab6b86262ecad6a137904bab730"
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
