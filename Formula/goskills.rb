class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.5.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.2/goskills_darwin_amd64.tar.gz"
    sha256 "d182943c0aa5469271c2b824a05926aa8abef641a51aa58d0df46dd006d09992"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.2/goskills_darwin_arm64.tar.gz"
    sha256 "d1809ff920d7cd254e0c4297452a35756734653a5f2e31074482a0a41c965cee"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.2/goskills_linux_amd64.tar.gz"
    sha256 "ea5588b8dcc3cb16c81cdfdc44d80368869c8b82eaae9ca5dcfed6dc544331c3 "  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "-h"
  end
end