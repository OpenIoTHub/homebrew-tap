# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PhicommR1Controler < Formula
  desc "Phicomm R1 Controler"
  homepage "https://github.com/IoTDevice/phicomm-r1-controler"
  version "0.0.20"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/IoTDevice/phicomm-r1-controler/releases/download/v0.0.20/phicomm-r1-controler_0.0.20_Darwin_x86_64.tar.gz"
    sha256 "b76d7ac05fd058abc67b5dc4fb04470ac54f7ae25ee45adc709c4847a46010f5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/IoTDevice/phicomm-r1-controler/releases/download/v0.0.20/phicomm-r1-controler_0.0.20_Linux_x86_64.tar.gz"
    sha256 "6ae34ce0c61c37f0ab45a7f410dd076b6e2f38e9f102199ec4992e2e6cacf89a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/IoTDevice/phicomm-r1-controler/releases/download/v0.0.20/phicomm-r1-controler_0.0.20_Linux_armv6.tar.gz"
    sha256 "a45cf9aa4ed629ae1cf7df6b81e5eb15abfed80aabff4af228a8a2a0262f21d5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/IoTDevice/phicomm-r1-controler/releases/download/v0.0.20/phicomm-r1-controler_0.0.20_Linux_arm64.tar.gz"
    sha256 "8ea415995e5cfd6d1638973b2c17647003265dfd4d5753ffc9a08393d9a5360d"
  end

  def install
    bin.install "phicomm-r1-controler"
  end

  test do
    system "#{bin}/phicomm-r1-controler -v"
  end
end
