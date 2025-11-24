class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.1.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.1.3/goskills_darwin_amd64.tar.gz"
    sha256 "b445e2a0a87a94b6c1978e46a6ed57f0e20695cea2ed9c83af3de7c2fb2f7e46"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.1.3/goskills_darwin_arm64.tar.gz"
    sha256 "aa92a781c51473882c7c9495c0b819072a5a4d6a0f53d364ad11bc8d8fa6cfd7"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.1.3/goskills_linux_amd64.tar.gz"
    sha256 "32f83d8a3f38fba02ea70493a3be6653d1d6b50fa6c4e8489a3e1e090586e12e"  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "--version"
  end
end