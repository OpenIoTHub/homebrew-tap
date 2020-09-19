# This file was generated by GoReleaser. DO NOT EDIT.
class Getip < Formula
  desc "OpenIoTHub get my public ip"
  homepage "http://github.com/OpenIoTHub"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OpenIoTHub/getip/releases/download/v0.1.0/getip_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "c36a310ffe9ce2f9adc859aaf91904fe634d1acdbcdafe4b2f9fe460a9b7da86"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OpenIoTHub/getip/releases/download/v0.1.0/getip_0.1.0_Linux_x86_64.tar.gz"
      sha256 "9054c5798dddd288c64ae8233638c48f34be66b9fb430ed4855317e5cd29da1e"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpenIoTHub/getip/releases/download/v0.1.0/getip_0.1.0_Linux_arm64.tar.gz"
        sha256 "6be5a4f565556f15e676e1d052577464ec11e0598e9314e0aaba63516e394a2e"
      else
        url "https://github.com/OpenIoTHub/getip/releases/download/v0.1.0/getip_0.1.0_Linux_armv6.tar.gz"
        sha256 "492efaa2320eab3e20095134e9a4d48b5a3742c62b2831f183d51dc9c82b9f29"
      end
    end
  end

  def install
    bin.install "getip"
  end

  test do
    system "#{bin}/getip -v"
  end
end
