class AgentCli < Formula
  desc "Go DeepResearch Agent CLI"
  homepage "https://github.com/smallnest/goskills"
  version "0.3.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.3.0/goskills_darwin_amd64.tar.gz"
    sha256 "ed879c77dafe2eefd0ee8060683dff330555d39b70df6a9084cf08a4bf4d1730"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.3.0/goskills_darwin_arm64.tar.gz"
    sha256 "ad78473ec2557b2d96c8e851e7138a42516295e33bf9f14a3458139c9206a713"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.3.0/goskills_linux_amd64.tar.gz"
    sha256 "4f8a1ce4b84e7ff85356682ce7093df3737ceffc5add0c6a725cb2b07f41b300"  # 需要替换
  end

  def install
    bin.install "agent-cli"
  end

  test do
    system "#{bin}/agent-cli", "--version"
  end
end