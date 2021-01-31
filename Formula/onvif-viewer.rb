# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OnvifViewer < Formula
  desc "Onvif Camera Viewer"
  homepage "https://github.com/mDNSService/onvif-viewer"
  version "1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mDNSService/onvif-viewer/releases/download/v1.3/onvif-viewer_1.3_Darwin_x86_64.tar.gz"
    sha256 "06b24680832258682b9c134f0e3cfa739603538040cab768ee8f1eebecf31780"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mDNSService/onvif-viewer/releases/download/v1.3/onvif-viewer_1.3_Linux_x86_64.tar.gz"
    sha256 "c3766a5b15be558f94fe4c141994c508076b0db7af89c5082ea47af4abe6a2d2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/mDNSService/onvif-viewer/releases/download/v1.3/onvif-viewer_1.3_Linux_armv6.tar.gz"
    sha256 "b33e61d618f0cfc337680fcd04eda8a024e139e0c1bf8de371f31107eb13d20b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/mDNSService/onvif-viewer/releases/download/v1.3/onvif-viewer_1.3_Linux_arm64.tar.gz"
    sha256 "4d10e38cf3662559203d61c6fb1589a4b12635532a438300f3fbfcd520238673"
  end

  def install
    bin.install "onvif-viewer"
  end

  test do
    system "#{bin}/onvif-viewer -v"
  end
end
