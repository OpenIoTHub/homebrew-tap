# This file was generated by GoReleaser. DO NOT EDIT.
class Aliddns < Formula
  desc "Aliyun ddns service"
  homepage "http://github.com/OpenIoTHub"
  version "0.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.2/aliddns_0.0.2_Darwin_x86_64.tar.gz"
    sha256 "9bbba5cbf75a2e387e3ecffb53d1fed774833a5df974e8858048586098942944"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.2/aliddns_0.0.2_Linux_x86_64.tar.gz"
      sha256 "291591f58b876a6b511a050d8a6e101f4e391804e386e55704ca14f91af16008"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.2/aliddns_0.0.2_Linux_arm64.tar.gz"
        sha256 "117b632802381d522043a2bb74b1c3d7589296dcb40dd295f95b1c274923a577"
      else
        url "https://github.com/OpenIoTHub/aliddns/releases/download/v0.0.2/aliddns_0.0.2_Linux_armv6.tar.gz"
        sha256 "33b735ee2ef98cb236329d2fd3cc5eb29df0605be0b56622dd4e8331afd28e8b"
      end
    end
  end

  def install
    bin.install "aliddns"
  end

  test do
    system "#{bin}/aliddns -v"
  end
end
