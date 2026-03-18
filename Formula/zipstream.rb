class Zipstream < Formula
  desc "Download and extract ZIP files in a single streaming pass"
  homepage "https://github.com/refo/zipstream"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/refo/zipstream/releases/download/v0.1.1/zipstream-v0.1.1-aarch64-macos.tar.gz"
      sha256 "a39d2390b5467a359fb64b7c60079527da315589b857701a9fc5bd09f475cd36"
    else
      url "https://github.com/refo/zipstream/releases/download/v0.1.1/zipstream-v0.1.1-x86_64-macos.tar.gz"
      sha256 "9ea73fe1050eff1785bd92ed033b0261d4c28ebc1705889addead332e7651734"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/refo/zipstream/releases/download/v0.1.1/zipstream-v0.1.1-aarch64-linux.tar.gz"
      sha256 "bd74d65530cce37c33528e74c154622b640d2f1a1878a11b040d3b9896585c22"
    else
      url "https://github.com/refo/zipstream/releases/download/v0.1.1/zipstream-v0.1.1-x86_64-linux.tar.gz"
      sha256 "8ff162fc41891125f3ef168fd514ce773b440314aba738a25fdac6df1bb8baa9"
    end
  end

  def install
    bin.install "zipstream"
  end

  test do
    assert_match "Usage: zipstream", shell_output("#{bin}/zipstream --help 2>&1", 0)
  end
end
