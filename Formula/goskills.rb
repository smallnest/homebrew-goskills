class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.5.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.4/goskills_darwin_amd64.tar.gz"
    sha256 "cc2782b7934d35ba2a734a9104691a0eb9a1cbf2811585884b47231b7649aa58"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.4/goskills_darwin_arm64.tar.gz"
    sha256 "bd43a08a9e8bdf8e2bbcd443adf73b9d87e1949dbccab929fba8655fc0906534"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.5.4/goskills_linux_amd64.tar.gz"
    sha256 "4bc9520fa340f132d5ae4187ca580db11419dd2c0f783e5a5fe6788e5e926dec"  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "-h"
  end
end