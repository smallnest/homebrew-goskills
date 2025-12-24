class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.5.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.1/goskills_darwin_amd64.tar.gz"
    sha256 "2d9b3a953c7c5f60db1b04739c0e9b346b08ce185cb4f32c58c85edc4d7b79a0"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.1/goskills_darwin_arm64.tar.gz"
    sha256 "64a196c00fb6ed21b129625f1438cee392bb239c360cd2c189fd8266152ee0c9"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.1/goskills_linux_amd64.tar.gz"
    sha256 "c35251483bce383efa79d76e21aa20cbe7f966342d822aac75a1fa5c3d5b06f7 "  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "-h"
  end
end