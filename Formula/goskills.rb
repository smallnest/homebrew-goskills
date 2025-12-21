class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.4.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.4.2/goskills_darwin_amd64.tar.gz"
    sha256 "a9be29b97da9671f2e8729a73ab7860090402d75ed6988ece1c31f23e014c8ef"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.4.2/goskills_darwin_arm64.tar.gz"
    sha256 "a425bdb1f9a232bf89e4bb9ca2b06fe2c3055aaba8608e3926ecacde35f3cefa"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.4.2/goskills_linux_amd64.tar.gz"
    sha256 "3bff39e6113d59a8f70a1987ce4a21a496bf922886dc93d7824e2aebd9edce6b"  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "-h"
  end
end