class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.0"
  license "Proprietary"
  
  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0/mpe-1.0.0.tar.gz"
  sha256 "0fb480fb9ed95201e8e401fbb3295896a723373f8e22918dd04b22cb0bb9b7fb"
  
  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f383c65bdabd5e8c7cff40bea8128e6071a3fab5a473b2f5e5f69146dd4fbc17"
    sha256 cellar: :any_skip_relocation, monterey: "e3e7fa1e32804d46205a155515b586ec551eecb1ad609de64222cbf76d647058"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "194701d49c1aa9271e925d6d027d8f6f5d602538fbd5d133050ad2d348c9f98d"
    sha256 cellar: :any_skip_relocation, arm64_linux: "43a33edbd02370016642a49b8477e4bd8e75af56fb018009a2ac6aa80f3f7423"
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
