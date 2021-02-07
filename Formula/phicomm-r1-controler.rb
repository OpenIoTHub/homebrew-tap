# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PhicommR1Controler < Formula
  desc "Phicomm R1 Controler"
  homepage "https://github.com/IoTDevice/phicomm-r1-controler"
  version "0.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/IoTDevice/phicomm-r1-controler/releases/download/v0.0.3/phicomm-r1-controler_0.0.3_Darwin_x86_64.tar.gz"
    sha256 "48ddb598ac4c023b3f68283ea20b532f204bc9001ccabf446f20072de33b9e5a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/IoTDevice/phicomm-r1-controler/releases/download/v0.0.3/phicomm-r1-controler_0.0.3_Linux_x86_64.tar.gz"
    sha256 "eb7e27cf23def78be7a16b2b12c7d0aa671cdec0596e9bc81847ab2370fc2caf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/IoTDevice/phicomm-r1-controler/releases/download/v0.0.3/phicomm-r1-controler_0.0.3_Linux_armv6.tar.gz"
    sha256 "435ee0a6d8a063e3ae37597d51d5ee8624519b79936687146e45caa9f8fd73e2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/IoTDevice/phicomm-r1-controler/releases/download/v0.0.3/phicomm-r1-controler_0.0.3_Linux_arm64.tar.gz"
    sha256 "536f520c7b7909fdd08c80680dd3d84e786f6c3b1ae54da6a4a31f914ad8ec98"
  end

  def install
    bin.install "phicomm-r1-controler"
  end

  test do
    system "#{bin}/phicomm-r1-controler -v"
  end
end
