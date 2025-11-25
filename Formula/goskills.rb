class Goskills < Formula
  desc "Go技能工具集"
  homepage "https://github.com/smallnest/goskills"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.2.0/goskills_darwin_amd64.tar.gz"
    sha256 "f026aae03b42844754ab8b6211d3a2e606eceba9d12b94507e316217f688e8f4"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.2.0/goskills_darwin_arm64.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.2.0/goskills_linux_amd64.tar.gz"
    sha256 "54936b2734b02637aacb4a36624db9101cb0fbe74df8c37effe6b4391def84db"  # 需要替换
  end

  def install
    bin.install "goskills"
  end

  test do
    system "#{bin}/goskills", "--version"
  end
end