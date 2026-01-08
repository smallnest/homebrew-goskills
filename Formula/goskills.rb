class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.6.0/goskills_darwin_amd64.tar.gz"
    sha256 "cde290c5e7f041c3da8072f2fb082da5df791236b4859b0020f28af1f983cb58"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.6.0/goskills_darwin_arm64.tar.gz"
    sha256 "b58f4460d8309970c78a984d1c10878129271652d18c98ae80d23ea7a12dcb74"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.6.0/goskills_linux_amd64.tar.gz"
    sha256 "116aeb1af64bb2e830aca0b23e95d505b327a5ae9f844f70fee18f302b467e10 "  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "-h"
  end
end