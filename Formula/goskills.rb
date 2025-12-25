class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.5.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.3/goskills_darwin_amd64.tar.gz"
    sha256 "6ad97df8ee376672b8e033f7ec1dd546e8e092526055bfb09e440f98e3a50a5f"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.3/goskills_darwin_arm64.tar.gz"
    sha256 "c0ab144f1b3cc5b5f8256e0ea837d74b601cdba047cbb081733283c9c5d99216"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.3/goskills_linux_amd64.tar.gz"
    sha256 "d44acbcbcb3ab2f12d8f4efad8e5ed47861e8b7a47448c9eafb3e51ea38865c8"  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "-h"
  end
end