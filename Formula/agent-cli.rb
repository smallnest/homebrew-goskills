class AgentCli < Formula
  desc "Go DeepResearch Agent CLI"
  homepage "https://github.com/smallnest/goskills"
  version "0.3.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.3.2/goskills_darwin_amd64.tar.gz"
    sha256 "sha256:f3bcbed2f956580a31202a9c46c01764a0d1f7b1d2ca184fe0139616b801ee7d"  # 需要替换
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/smallnest/goskills/releases/download/v0.3.2/goskills_darwin_arm64.tar.gz"
    sha256 "sha256:2c0dff5e133a06d2005ad1bd84bd23862c1cc0add28023535d7b6a891c1d91e0"  # 需要替换
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/smallnest/goskills/releases/download/v0.3.2/goskills_linux_amd64.tar.gz"
    sha256 "sha256:a847076842463c6a5c87d9568ece7f782a09fc09bdae280ba176b88140326e11"  # 需要替换
  end

  def install
    bin.install "agent-cli"
  end

  test do
    system "#{bin}/agent-cli", "--version"
  end
end