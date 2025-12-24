class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.0/goskills_darwin_amd64.tar.gz"
    sha256 "00dd13b00aa396e741bd8e44fa5dec2dc83d7e812bfd6c972fac38bddf5e6e03"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.0/goskills_darwin_arm64.tar.gz"
    sha256 "d12df8d5ae9d5713ae2102bfc52ecfdaf56cd36bb94be48838a4af8fd1d0331e"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.0/goskills_linux_amd64.tar.gz"
    sha256 "c0ed4fcb6663f9f99776dc5a426f7e26f842beb57b02e7bd04c225af8e83f289"  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "-h"
  end
end