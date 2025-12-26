class Lyocell < Formula
  desc "High-performance load testing tool (k6 clone) on Java 25 & GraalVM"
  homepage "https://github.com/wilhg/lyocell"
  version "0.4.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wilhg/lyocell/releases/download/v0.4.10/lyocell-macos-aarch64"
    sha256 "3cbe7371714bdbf43d7607fec5ec2e6b96d9fffeb8ce4fd690808f6d8d12e897"
  elsif OS.linux?
    url "https://github.com/wilhg/lyocell/releases/download/v0.4.10/lyocell-linux-amd64"
    sha256 "e1a57418946f585dfe0c43bc5f5ea4ee9d0463a5a7582a0e8312e02fd31aa162"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "lyocell-macos-aarch64" => "lyocell"
    elsif OS.linux?
      bin.install "lyocell-linux-amd64" => "lyocell"
    end
  end

  test do
    system "#{bin}/lyocell", "--version"
  end
end
