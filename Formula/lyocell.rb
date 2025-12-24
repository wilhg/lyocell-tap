class Lyocell < Formula
  desc "High-performance load testing tool (k6 clone) on Java 25 & GraalVM"
  homepage "https://github.com/wilhg/lyocell"
  version "0.2.24"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wilhg/lyocell/releases/download/v0.2.24/lyocell-macos-aarch64"
    sha256 "7f9a22027b3c46d56bf64522e97cc0272a176e53e17ecb9089f4025f7db59e76"
  elsif OS.linux?
    url "https://github.com/wilhg/lyocell/releases/download/v0.2.24/lyocell-linux-amd64"
    sha256 "daf4b1fcb9c8925f92c60f74cc3ed1bb6af6e3226f9e3ae1e28f1cbb4053b78d"
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
