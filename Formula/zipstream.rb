class Zipstream < Formula
  desc "Download and extract ZIP files in a single streaming pass"
  homepage "https://github.com/refo/zipstream"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/refo/zipstream/releases/download/v0.2.0/zipstream-v0.2.0-aarch64-macos.tar.gz"
      sha256 "6878be025467a3fafb2b62ddf602b4559d7bfad8ea4dbbee0931b5f38cbd2dc5"
    else
      url "https://github.com/refo/zipstream/releases/download/v0.2.0/zipstream-v0.2.0-x86_64-macos.tar.gz"
      sha256 "20cc51cbd5ad2384024abfd6f1850b79c2f668a4d5ce3ffb884bb8538d345cb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/refo/zipstream/releases/download/v0.2.0/zipstream-v0.2.0-aarch64-linux.tar.gz"
      sha256 "b81305293d7aee30c2359ff151435e376ec30b030a2dd865bd7e3f56679b2517"
    else
      url "https://github.com/refo/zipstream/releases/download/v0.2.0/zipstream-v0.2.0-x86_64-linux.tar.gz"
      sha256 "970438a573057a8ddfe51c56e3835c5eb9e74642f043793801dbe2e839652ce4"
    end
  end

  def install
    bin.install "zipstream"
  end

  test do
    assert_match "Usage: zipstream", shell_output("#{bin}/zipstream --help 2>&1", 0)
  end
end
