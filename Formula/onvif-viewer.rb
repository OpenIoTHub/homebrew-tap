# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OnvifViewer < Formula
  desc "Onvif Camera Viewer"
  homepage "https://github.com/mDNSService/onvif-viewer"
  version "1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mDNSService/onvif-viewer/releases/download/v1.2/onvif-viewer_1.2_Darwin_x86_64.tar.gz"
    sha256 "a8806ad31c93c76c129011f6f155309098e183bb2458c753b92ab5fe4b804bee"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mDNSService/onvif-viewer/releases/download/v1.2/onvif-viewer_1.2_Linux_x86_64.tar.gz"
    sha256 "b196f2b511de1b9ce63033cde5939be02e6583c85c4316838d09182d876531c3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/mDNSService/onvif-viewer/releases/download/v1.2/onvif-viewer_1.2_Linux_armv6.tar.gz"
    sha256 "27cf0245ce97909f5bb0f8da05450db013bd68d03a3ac73e994ae7b2be34be9c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/mDNSService/onvif-viewer/releases/download/v1.2/onvif-viewer_1.2_Linux_arm64.tar.gz"
    sha256 "7e0bef4223a0542b3da4ef6257feb9e03af2a16e00902c636f8cbdcb9a8a709d"
  end

  def install
    bin.install "onvif-viewer"
  end

  test do
    system "#{bin}/onvif-viewer -v"
  end
end
