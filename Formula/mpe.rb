class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.0"
  license "Proprietary"
  
  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0/mpe-1.0.0.tar.gz"
  sha256 "90754bd35c4894365e370db6dcb7f7a73b65029d2bb7edd66687635acfc71b47"
  
  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d8ec3c6f9cb875fcf0889d7c028dfb46e6cfcbc9bfbc95b01ab247bde4a1a6fd"
    sha256 cellar: :any_skip_relocation, monterey: "9c6448ee2a1219ae610878ecbb0150b980877ab9beca7da12c39bb4dc8782a37"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d05e16c900ddfe7c2526a1e2a103177c6622921f258200745c89f939049bc46e"
    sha256 cellar: :any_skip_relocation, arm64_linux: "0c6f2bf21b7110c29172fa96f9db3f1a50e8becf5d0911ace78e129674ada8ea"
  end
  
  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "bin/mpe-cli-darwin-arm64" => "mpe"
      else
        bin.install "bin/mpe-cli-darwin-amd64" => "mpe"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "bin/mpe-cli-linux-arm64" => "mpe"
      else
        bin.install "bin/mpe-cli-linux-amd64" => "mpe"
      end
    end
  end
  
  test do
    system "#{bin}/mpe", "--help"
  end
end
