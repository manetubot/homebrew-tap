class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetubot/homebrew-tap"
  version "1.0.0"
  license "Proprietary"
  
  # Main URL for the source/binary
  url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0/mpe-1.0.0.tar.gz"
  sha256 "1e1582ffc23e7a6e23191dcc1d9f429faeda048c4d52997f4d921065706ad6a0"
  
  bottle do
    root_url "https://github.com/manetubot/homebrew-tap/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "ade03ae4fe6569978f0661be6f520edb8a2ccce4a6e019512cf32b19db804075"
    sha256 cellar: :any_skip_relocation, monterey: "1a27818847c4d80459ef98ff36ba2b652ac1f9e19fc12027152b9beaf0a159f9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "666039f70af54ac2e38817a577c455ca9516e8e35c1d1acc3461b5b6b68a9e14"
    sha256 cellar: :any_skip_relocation, arm64_linux: "1e3fafdd3a088ea9b833e4e5c854534a51b93cb33f1adb03bc0b842daf51ebd4"
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
