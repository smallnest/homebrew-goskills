class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.4.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.4.3/goskills_darwin_amd64.tar.gz"
    sha256 "9fc261a44db7938291e12988ccd0bb33bd2b53c0c4ced0de4d5d1345a1bc0baa"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.4.3/goskills_darwin_arm64.tar.gz"
    sha256 "587298f571acc1a25b0733bc2bd66dfd21561b7bbc198a87d0bc35caf338d649"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.4.3/goskills_linux_amd64.tar.gz"
    sha256 "feaadbc0704ee0f99d9a531909ba821a40de3686f88db55089c6599ee549fed5"  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "-h"
  end
end